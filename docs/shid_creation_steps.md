### Ensure MetaMask is setup and the correct network is selected in which the coin is intended to be minted on.
- Go to https://metamask.io/download.html and install MetaMask
- Select Network (For testing, use something like the Ropsten Test Network; for Production use the Etherium Mainnet)
- Fund the Etherium wallet to ensure [Gas Fees](https://ethereum.org/en/developers/docs/gas/) are covered when minting the new token.
  - If the Etherium wallet is on the Ropsten Test Network, a faucet may be used to fund the wallet. [Faucet link](https://faucet.ropsten.be/)
- Copy (keep note of) the funded Etherium Wallet Address

___

### Developing the SHIDDED coin ERC-20 token in Remix online IDE
- Open Etherium's Remix Tool https://remix.etherium.org
- Ensure MetaMask Chrome Browser extension is installed and Etherium has been funded to the wallet of the future ERC-20 token owner.
- Create a new file (*SHID-20.sol*)
- Copy/Paste the following smart contract details (Note that there are 18 decimal places for this token so the number of coins created is 1 billion.
    ```
    pragma solidity ^0.8.0;

    import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/master/contracts/token/ERC20/ERC20.sol";

    contract SHIDDED is ERC20 {
      constructor () ERC20 ("SHIDDED COIN", "SHID"){
        _mint(msg.sender, 1000000000000000000000000000);
      }
    }
    ```
    - Click 'Solidity Compiler'
    - Ensure 'Compiler' is set to 0.8.1+commit.df193b15
    - Click 'Compile shid-20.sol'
    - Click 'Deploy and Run Transactions'
    - Select environment 'Injected Web3' -- This should cause a prompt which asks for approval to connect Remix with MetaMask (Click Next > Connect)
    - Select Account (The Etherium address should match what is in MetaMask)
    - Select Contract 'SHIDDED - shid-20.sol'
    - Click Deploy
    
    ###### From here, MetaMask will take over...
    - MetaMask will ask you to confirm the contract deployment along with gas fees; Click Confirm.
    - Confirm that the contract was successfully deployed through Remix's console output and MetaMasks Chrome notifications.
        - Expand the block from the console output; copy the hash of the transaction for later use.
      
___

### Validate the transaction was successful on the Etherscan Blockchain
- Navigate to Etherscan's website:
    - Ropsten Testnet Network: https://ropsten.etherscan.io/
    - Etherium Mainnet Network: https://etherscan.io/
- Observe field values within Etherscan results:
    - The status should say 'Success'
    - Other field values: Block, Timestamp, From, Interacted With (To), Tokens Transferred, Value, Transaction Fee, Gas Price
- Click the 'Interacted With (To)' hash link.
    - Observe and confirm the correct Token Tracker (Name and Ticker) as well as the Contract Creator.
    - Observe the Txn Hash and Block showing the Contract Creation event.
- Click the Token Tracker URL
    - Observe the following fields: Contract, Max Total Supply, Holders, Transfers.
    - Observe the history of Transfers by Txn Hash.

___

### Add the custom token to MetaMask
The Best Way:
- Open the following URL: []
- Click Add to MetaMask Button
- Click Accept in MetaMask

A Cool Way:
- Download MetaMask Mobile App or Chrome extension
- Click the following links which will bring you to a page to add SHID to Meta Mask. (This will be done via our own website in the future).
    [] - Service provided by WatchToken at https://vittominacori.github.io/
- Click 'View on Etherscan' to verify on the blockchain
- Click 'Add to MetaMask'

The Manual Way:
- Download MetaMask Mobile App or Chrome extension
- Click 'Add Token'
- Ensuure 'Custom Token' is selected
- Paste the SHIDDED token address ''
- Verify the token symbol 'SHID' comes up and the Decimalls of Precision are 18.
- Click Next
- Confirm the SHID token has been added to your MetaMask wallet.

___

### Transfer SHID coins from the creator's address to the smart contract address
Once the coin is provisioned, all belong to the asset creator. At this point in time, no one can buy the coin because the creator owns them all! It will be important to transfer coins back to the contract address so they are available to be purchased on the market!
- Open MetaMask-
- Select the SHID token
- Click Send
- Copy/Paste the contract address of SHID into the address field.
- Fill out the number of tokens to give the contract. These tokens/coins will be available for purchase.
- Click Next
- Acknowledge [Gas Fees](https://ethereum.org/en/developers/docs/gas/) and click "Confirm"
- The transaction will go to pending. Within a short amount of time, the transaction will be finish and the contract will own the tokens transferred.

___

### How to determine SHIDDED coin's worth.
Thanks to smart contracts, there are automated algorithms ([Automated Market Makers](https://www.gemini.com/cryptopedia/amm-what-are-automated-market-makers)) that will value SHIDDED coin based on the amount of Etherium within the liquidity pool. There is a ratio of Etherium to SHIDD that will move the price. As more Etherium is held within the liquidity pool, the price of SHID increases. Those who decide to keep money within the liquidity pool are rewarded with interest.

Read more about [Pricing](https://uniswap.org/docs/v2/advanced-topics/pricing/#:~:text=How%20are%20prices%20determined%3F,underpinned%20by%20a%20liquidity%20pool.&text=The%20ratio%20of%20tokens%20in,that%20a%20swap%20executes%20at.) from Uniswap

---
### Add to exchange Liquitity Pools (Pancake Swap and Uniswap)

**Pancake Swap Liquidity through Binance Smart Chain**

When you add liquidity, you are given pool tokens representing your position. These tokens automatically earn fees proportional to your share of the pool, and can be redeemed at any time. Whenever someone trades PancakeSwap, the trader pays a 0.2% fee, of which 0.17% is added to the liquidity pool of the swap pair they traded on. To make being a liquidity provider even more worth your while, you can also put your LP tokens to work whipping up some fresh yield on the CAKE farms [here](https://pancakeswap.finance/), while still earning your 0.17% trading fee reward.
- Read documentation at https://docs.pancakeswap.finance/products/pancakeswap-exchange/pancakeswap-pools
- Go to https://exchange.pancakeswap.finance/#/pool
- Select "ETH" in the Input box and provide a value.
- Select "SHID" in the 2nd Input box and provide a value.
- Observe the price of "SHID" per "ETH"
- Observe Gas Fees
- Click Approve
- Wait for an approval
- Once approved, click "Create Pool & Supply" (Gas Fees)



**Uniswap Liquidity through Etherium Block Chain**

Uniswap incentivises users to add liquidity to pools by rewarding liquidity providers with fees that are collected by the protocol. A 0.3% fee is taken for swapping between Ether and a token and roughly 0.6% is taken for token to tokens swaps.

- Read documentation at https://docs.uniswap.org/concepts/introduction/liquidity-user-guide
- Go to https://app.uniswap.org/#/pool
- Click 'New Position'
- Select Pair 'ETH' and 'SHID'
- Select Fee Tier (1% seems fitting as this is best for exotic pairs; SHIDDED is exotic)
- Set Starting Price (only required for new pools) - This should be the accurate market price of each token.
- Set Price Range
    - Set Min Price
    - Set Max Price
    - Observe the Current Price
- Deposit Amounts
- Approve and Add
 - Click 'Confirm' in MetaMask


Validate the value of SHIDDED coin with PooCoin
- Go to https://poocoin.app (Binance Smart Chain)
- Insert the Token Address for "SHID"
- The results will allow you to see the coin's value and market cap

Validate the value of SHIDDED coin with CoinMarketCap
- Go to https://coinmarketcap.com/view/ethereum/
- Insert the Token Address for "SHID"
- The results will allow you to see the coin's value and market cap


___
### Buy the SHIDDED COIN
Pancake Swap 
- Go to https://exchange.pancakeswap.finance/
- Click Connect on the top right of the screen to connect an Etherium wallet.
    - Various wallets are supported (Metamask, TrustWaLlet, MathWallet, TokenPocket, WalletConnect, Binance Chain Wallet, SafePal Wallet)
- Select "ETH" in the FROM box. 
- Select "SHID" in the TO box. (You may need to enter the contract address if SHID doesn't resolve.)
- Fill out the amount of coins in the TO box.

Uniswap
- Go to https://app.uniswap.org/#/swap
- Click Connect to a wallet on the top right of the screen to connect to an Etherium wallet.
    - Various wallets are supported (MetaMask, WalletConnect, CoinbaseWallet, Fortmatic, Portis)
- Select "ETH" in the FROM box. 
- Select "SHID" in the TO box. (You may need to enter the contract address if SHID doesn't resolve.)
- Fill out the amount of coins in the TO box.
- Click Swap
- Observe Prices, Liquidity Provider Fees, Routes, Minimum Received, Slippage Tolerance
- Click Confirm Swap
    ###### From here, MetaMask will take over...
    - Observe Details including the Gas Fees and total.
    - Click Confirm

    ###### From here, It's back to Uniswap...
    - Observe the Transaction Submitted Box
    - Click on the 'View on Etherscan' link to verify the swap is successful.
    - Optionally: Click 'Add SHID' to Metamask
  
    ###### From here, MetaMask will take over...
    - Confirm 'SHID' tokens are available in your MetaMask wallet.
___

### List SHIDDED coin on exchanges
- Binance: https://www.binance.com/en/support/faq/115000822512
- Coinbase: https://assethub.coinbase.com/
- Pancake Swap: https://exchange.pancakeswap.finance/
- Uniswap: https://uniswap.org/

___

#### Cool Links:
- https://tokenmint.io/blog/how-to-list-your-custom-erc20-token-to-uniswap.html
- https://tokenmint.io/blog/decentralized-exchanges-list.html
- https://tokenmint.io/
- https://docs.ethhub.io/guides/graphical-guide-for-understanding-uniswap/
    - Instead Uniswap uses the Exchange contracts to pool both Ether and a specific ERC20. When trading Ether for a token, Ether is sent to the contract’s pool and the token is given back to the user. As a result, the user doesn’t need to wait for a counterparty in order to exchange or worry about specifying a price. Since anyone can list a token and users don't need to worry about matching with someone else, it is very easy to avoid any bootstrapping issue when first launching a token. The amount that is returned from swapping is based on an automated market maker formula. The graph below helps illustrate how the formula works. Essentially, the amount that is returned to you is based on the ratio of Ether to token in the pool. No matter the size of a swap, the user is guaranteed to have their trade execute because the more of an asset that you add to one side of the pool, the further along the curve it pushes you for the other asset. Meaning the larger the order relative to the pool, the worst rate you will receive as the ratio moves along the curve.
- Becoming a liquitity provider: https://pintail.medium.com/uniswap-a-good-deal-for-liquidity-providers-104c0b6816f2