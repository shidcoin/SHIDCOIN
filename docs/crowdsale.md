# Capped Crowdsale
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

#### Give 1 ETH, Receive 4200000 SHID

#### Total SHID available for this Crowdsale: 21000000 

#### Send ETH to 0x9CA22680a8429722F6941cd3e3213cA683a33f45

- Rate: 4200000
- Wallet: 0xD6c02Cf8A357d9fEa0c7f80E961205b988646896
- Token: 0x78525827e6b346059e3324e5def20ee1e90469d2
- Cap: 5000000000000000000

*Estimated Value*
- If Ethereum's value is $2,200.00 per coin, Shidded Coin's value is $0.00052380952 per coin

*Transaction Log*
- Crowdsale Contract Address: https://etherscan.io/address/0x9ca22680a8429722f6941cd3e3213ca683a33f45
- Crowdsale Smart Contract Creation: https://etherscan.io/tx/0x690d640a57af1699866fa908386ea9ab3757de93ba83abaef2e9e5c81d7ed777
- Funding Contract Address with 21,000,000 SHID: https://etherscan.io/tx/0x91627e382beff8404f57efb5e139c1de2f1c0de4e82e338d9947cc39a69e58b1

*Example*
Current SHID: 0
Sending 0.0001 Ethereum
New SHID: 420
