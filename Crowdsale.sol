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
