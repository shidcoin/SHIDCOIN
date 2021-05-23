# Capped Crowdsale
### Ensure MetaMask is setup and the correct network is selected in which the coin is intended to be minted on.

```
pragma solidity ^0.5.0;

import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/release-v2.5.0/contracts/crowdsale/Crowdsale.sol";
import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/release-v2.5.0/contracts/crowdsale/validation/CappedCrowdsale.sol";

contract ShiddedCrowdsale is Crowdsale, CappedCrowdsale {
    constructor (
        uint256 rate,
        address payable wallet,
        IERC20 token,
        uint256 cap
    )
    
    public
    Crowdsale(rate, wallet, token)
    CappedCrowdsale(cap)
    {
        // I shidded and farded and camed my pants.
    }

}

```

## Crowdsale 1 Details! 
### Raising 5 ETH for Liquidity Pools on Uniswap
- Rate: 4200000
- Wallet: 0xD6c02Cf8A357d9fEa0c7f80E961205b988646896
- Token: 0x78525827e6b346059e3324e5def20ee1e90469d2
- Cap: 5000000000000000000

*Estimated Value*
- Give 1 ETH, Receive 4200000 SHID
- If Ethereum's value is $2,200.00 per coin, Shidded Coin's value is $0.00052380952 per coin