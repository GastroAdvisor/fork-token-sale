pragma solidity ^0.4.25;

import "ico-maker/contracts/crowdsale/BaseCrowdsale.sol";

/**
 * @title ForkTokenSale
 * @author Vittorio Minacori (https://github.com/vittominacori)
 * @dev Extends from BaseCrowdsale with the ability to change rate
 */
contract ForkTokenSale is BaseCrowdsale {

  uint256 private _currentRate;

  uint256 private _soldTokens;

  constructor(
    uint256 openingTime,
    uint256 closingTime,
    uint256 rate,
    address wallet,
    uint256 cap,
    uint256 minimumContribution,
    address token,
    address contributions
  )
    public
    BaseCrowdsale(
      openingTime,
      closingTime,
      rate,
      wallet,
      cap,
      minimumContribution,
      token,
      contributions
    )
  {
    _currentRate = rate;
  }

  /**
   * @dev Function to update rate
   * @param newRate The rate is the conversion between wei and the smallest and indivisible token unit
   */
  function setRate(uint256 newRate) public onlyOwner {
    require(newRate > 0);
    _currentRate = newRate;
  }

  /**
   * @return the number of token units a buyer gets per wei.
   */
  function rate() public view returns(uint256) {
    return _currentRate;
  }

  /**
   * @return the number of sold tokens.
   */
  function soldTokens() public view returns(uint256) {
    return _soldTokens;
  }

  /**
   * @dev Override to extend the way in which ether is converted to tokens.
   * @param weiAmount Value in wei to be converted into tokens
   * @return Number of tokens that can be purchased with the specified _weiAmount
   */
  function _getTokenAmount(uint256 weiAmount) internal view returns (uint256) {
    return weiAmount.mul(rate());
  }

  /**
   * @dev Update the contributions contract states
   * @param beneficiary Address receiving the tokens
   * @param weiAmount Value in wei involved in the purchase
   */
  function _updatePurchasingState(
    address beneficiary,
    uint256 weiAmount
  )
    internal
  {
    _soldTokens = _soldTokens.add(_getTokenAmount(weiAmount));
    super._updatePurchasingState(beneficiary, weiAmount);
  }
}
