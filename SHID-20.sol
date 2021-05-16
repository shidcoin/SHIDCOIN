pragma solidity ^0.8.0;

import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/master/contracts/token/ERC20/ERC20.sol";

contract SHIDDED is ERC20 {
    constructor () ERC20 ("SHIDDED COIN", "SHID"){
        _mint(msg.sender, 500000000000000000000000000000);
    }
}
