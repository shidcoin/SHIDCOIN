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
We've released a crowd sale smart contract! 
We've created a crowd sale smart contract to raise 5 ETH to start a Liquidity Pool on Uniswap. Support us by purchasing Shidded Coin; all funds raised will be used to grow the coin's value by listing it on one of the top decentralized exchanges!

:shidded: Send ETH  to:
0x9CA22680a8429722F6941cd3e3213cA683a33f45

Receive SHID in return.

High Level
- Raising 5 ETH for Liquidity Pools on Uniswap
- Give 1 ETH, Receive 4200000 SHID
- Donate any increment of Ethereum (as little as 1 Wei!)
- Total SHID available for this crowd sale:  21000000 

Example Purchase
- Current SHID: 0
- Sending 0.0001 Ethereum to 0x9CA22680a8429722F6941cd3e3213cA683a33f45
- New SHID: 420

Estimated Value
If Ethereum's value is $2,200.00 per coin, Shidded Coin's value is $0.00052380952 per coin

Transaction Log
Crowdsale Contract Address: https://etherscan.io/address/0x9ca22680a8429722f6941cd3e3213ca683a33f45
Crowdsale Smart Contract Creation: https://etherscan.io/tx/0x690d640a57af1699866fa908386ea9ab3757de93ba83abaef2e9e5c81d7ed777
Funding Contract Address with 21,000,000 SHID: https://etherscan.io/tx/0x91627e382beff8404f57efb5e139c1de2f1c0de4e82e338d9947cc39a69e58b1e




### Raising 5 ETH for Liquidity Pools on Uniswap

#### Give 1 ETH, Receive 4200000 SHID

#### Total SHID available for this Crowdsale: 21000000 

#### Send ETH to 0x9CA22680a8429722F6941cd3e3213cA683a33f45

*Estimated Value*
- If Ethereum's value is $2,200.00 per coin, Shidded Coin's value is $0.00052380952 per coin

*Transaction Log*
- Crowdsale Contract Address: https://etherscan.io/address/0x9ca22680a8429722f6941cd3e3213ca683a33f45
- Crowdsale Smart Contract Creation: https://etherscan.io/tx/0x690d640a57af1699866fa908386ea9ab3757de93ba83abaef2e9e5c81d7ed777
- Funding Contract Address with 21,000,000 SHID: https://etherscan.io/tx/0x91627e382beff8404f57efb5e139c1de2f1c0de4e82e338d9947cc39a69e58b1

*Example*
- Current SHID: 0
- Sending 0.0001 Ethereum to 0x9CA22680a8429722F6941cd3e3213cA683a33f45
- New SHID: 420

*Smart Contract Arguments*
- Rate: 4200000
- Wallet: 0xD6c02Cf8A357d9fEa0c7f80E961205b988646896
- Token: 0x78525827e6b346059e3324e5def20ee1e90469d2
- Cap: 5000000000000000000


https://etherscan.io/tx/0xcd65c0263918d9f8ba8df4879ff68be83e9996310f96fd6f277f57c7481dd650