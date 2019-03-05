## Sūrya's Description Report

### Files Description Table


|  File Name  |  SHA-1 Hash  |
|-------------|--------------|
| dist/ForkTokenSale.dist.sol | d0ee6b7ba28bdb2979ff875a765cc3efd16054c3 |


### Contracts Description Table


|  Contract  |         Type        |       Bases      |                  |                 |
|:----------:|:-------------------:|:----------------:|:----------------:|:---------------:|
|     └      |  **Function Name**  |  **Visibility**  |  **Mutability**  |  **Modifiers**  |
||||||
| **IERC20** | Interface |  |||
| └ | totalSupply | External ❗️ |   |NO❗️ |
| └ | balanceOf | External ❗️ |   |NO❗️ |
| └ | allowance | External ❗️ |   |NO❗️ |
| └ | transfer | External ❗️ | 🛑  |NO❗️ |
| └ | approve | External ❗️ | 🛑  |NO❗️ |
| └ | transferFrom | External ❗️ | 🛑  |NO❗️ |
||||||
| **SafeMath** | Library |  |||
| └ | mul | Internal 🔒 |   | |
| └ | div | Internal 🔒 |   | |
| └ | sub | Internal 🔒 |   | |
| └ | add | Internal 🔒 |   | |
| └ | mod | Internal 🔒 |   | |
||||||
| **ERC20** | Implementation | IERC20 |||
| └ | totalSupply | Public ❗️ |   |NO❗️ |
| └ | balanceOf | Public ❗️ |   |NO❗️ |
| └ | allowance | Public ❗️ |   |NO❗️ |
| └ | transfer | Public ❗️ | 🛑  |NO❗️ |
| └ | approve | Public ❗️ | 🛑  |NO❗️ |
| └ | transferFrom | Public ❗️ | 🛑  |NO❗️ |
| └ | increaseAllowance | Public ❗️ | 🛑  |NO❗️ |
| └ | decreaseAllowance | Public ❗️ | 🛑  |NO❗️ |
| └ | _transfer | Internal 🔒 | 🛑  | |
| └ | _mint | Internal 🔒 | 🛑  | |
| └ | _burn | Internal 🔒 | 🛑  | |
| └ | _burnFrom | Internal 🔒 | 🛑  | |
||||||
| **SafeERC20** | Library |  |||
| └ | safeTransfer | Internal 🔒 | 🛑  | |
| └ | safeTransferFrom | Internal 🔒 | 🛑  | |
| └ | safeApprove | Internal 🔒 | 🛑  | |
| └ | safeIncreaseAllowance | Internal 🔒 | 🛑  | |
| └ | safeDecreaseAllowance | Internal 🔒 | 🛑  | |
||||||
| **ReentrancyGuard** | Implementation |  |||
| └ | \<Constructor\> | Internal 🔒 | 🛑  | |
||||||
| **Crowdsale** | Implementation | ReentrancyGuard |||
| └ | \<Constructor\> | Internal 🔒 | 🛑  | |
| └ | \<Fallback\> | External ❗️ |  💵 |NO❗️ |
| └ | token | Public ❗️ |   |NO❗️ |
| └ | wallet | Public ❗️ |   |NO❗️ |
| └ | rate | Public ❗️ |   |NO❗️ |
| └ | weiRaised | Public ❗️ |   |NO❗️ |
| └ | buyTokens | Public ❗️ |  💵 | nonReentrant |
| └ | _preValidatePurchase | Internal 🔒 |   | |
| └ | _postValidatePurchase | Internal 🔒 |   | |
| └ | _deliverTokens | Internal 🔒 | 🛑  | |
| └ | _processPurchase | Internal 🔒 | 🛑  | |
| └ | _updatePurchasingState | Internal 🔒 | 🛑  | |
| └ | _getTokenAmount | Internal 🔒 |   | |
| └ | _forwardFunds | Internal 🔒 | 🛑  | |
||||||
| **TimedCrowdsale** | Implementation | Crowdsale |||
| └ | \<Constructor\> | Internal 🔒 | 🛑  | |
| └ | openingTime | Public ❗️ |   |NO❗️ |
| └ | closingTime | Public ❗️ |   |NO❗️ |
| └ | isOpen | Public ❗️ |   |NO❗️ |
| └ | hasClosed | Public ❗️ |   |NO❗️ |
| └ | _preValidatePurchase | Internal 🔒 |   | onlyWhileOpen |
||||||
| **CappedCrowdsale** | Implementation | Crowdsale |||
| └ | \<Constructor\> | Internal 🔒 | 🛑  | |
| └ | cap | Public ❗️ |   |NO❗️ |
| └ | capReached | Public ❗️ |   |NO❗️ |
| └ | _preValidatePurchase | Internal 🔒 |   | |
||||||
| **Ownable** | Implementation |  |||
| └ | \<Constructor\> | Internal 🔒 | 🛑  | |
| └ | owner | Public ❗️ |   |NO❗️ |
| └ | isOwner | Public ❗️ |   |NO❗️ |
| └ | renounceOwnership | Public ❗️ | 🛑  | onlyOwner |
| └ | transferOwnership | Public ❗️ | 🛑  | onlyOwner |
| └ | _transferOwnership | Internal 🔒 | 🛑  | |
||||||
| **TokenRecover** | Implementation | Ownable |||
| └ | recoverERC20 | Public ❗️ | 🛑  | onlyOwner |
||||||
| **Roles** | Library |  |||
| └ | add | Internal 🔒 | 🛑  | |
| └ | remove | Internal 🔒 | 🛑  | |
| └ | has | Internal 🔒 |   | |
||||||
| **OperatorRole** | Implementation |  |||
| └ | \<Constructor\> | Internal 🔒 | 🛑  | |
| └ | isOperator | Public ❗️ |   |NO❗️ |
| └ | addOperator | Public ❗️ | 🛑  | onlyOperator |
| └ | renounceOperator | Public ❗️ | 🛑  |NO❗️ |
| └ | _addOperator | Internal 🔒 | 🛑  | |
| └ | _removeOperator | Internal 🔒 | 🛑  | |
||||||
| **Contributions** | Implementation | OperatorRole, TokenRecover |||
| └ | \<Constructor\> | Public ❗️ | 🛑  | |
| └ | totalSoldTokens | Public ❗️ |   |NO❗️ |
| └ | totalWeiRaised | Public ❗️ |   |NO❗️ |
| └ | getContributorAddress | Public ❗️ |   |NO❗️ |
| └ | getContributorsLength | Public ❗️ |   |NO❗️ |
| └ | weiContribution | Public ❗️ |   |NO❗️ |
| └ | tokenBalance | Public ❗️ |   |NO❗️ |
| └ | contributorExists | Public ❗️ |   |NO❗️ |
| └ | addBalance | Public ❗️ | 🛑  | onlyOperator |
| └ | removeOperator | Public ❗️ | 🛑  | onlyOwner |
||||||
| **BaseCrowdsale** | Implementation | TimedCrowdsale, CappedCrowdsale, TokenRecover |||
| └ | \<Constructor\> | Public ❗️ | 🛑  | Crowdsale TimedCrowdsale CappedCrowdsale |
| └ | contributions | Public ❗️ |   |NO❗️ |
| └ | minimumContribution | Public ❗️ |   |NO❗️ |
| └ | started | Public ❗️ |   |NO❗️ |
| └ | ended | Public ❗️ |   |NO❗️ |
| └ | _preValidatePurchase | Internal 🔒 |   | onlyGreaterThanMinimum |
| └ | _updatePurchasingState | Internal 🔒 | 🛑  | |
||||||
| **ForkTokenSale** | Implementation | BaseCrowdsale |||
| └ | \<Constructor\> | Public ❗️ | 🛑  | BaseCrowdsale |
| └ | setRate | Public ❗️ | 🛑  | onlyOwner |
| └ | rate | Public ❗️ |   |NO❗️ |
| └ | soldTokens | Public ❗️ |   |NO❗️ |
| └ | _getTokenAmount | Internal 🔒 |   | |
| └ | _updatePurchasingState | Internal 🔒 | 🛑  | |


### Legend

|  Symbol  |  Meaning  |
|:--------:|-----------|
|    🛑    | Function can modify state |
|    💵    | Function is payable |
