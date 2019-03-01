pragma solidity ^0.4.25;

import "ico-maker/contracts/token/BaseToken.sol";

contract BaseTokenMock is BaseToken {
  constructor(
    string name,
    string symbol,
    uint8 decimals,
    uint256 cap,
    uint256 initialSupply
  )
    public
    BaseToken(name, symbol, decimals, cap, initialSupply)
  {} // solhint-disable-line no-empty-blocks
}
