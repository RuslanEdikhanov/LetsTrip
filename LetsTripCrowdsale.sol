pragma solidity ^0.5.2;

import "https://github.com/OpenZeppelin/openzeppelin-solidity/contracts/crowdsale/distribution/RefundablePostDeliveryCrowdsale.sol";
import "https://github.com/OpenZeppelin/openzeppelin-solidity/contracts/crowdsale/distribution/RefundableCrowdsale.sol";
import "https://github.com/OpenZeppelin/openzeppelin-solidity/contracts/crowdsale/validation/TimedCrowdsale.sol";
import "https://github.com/OpenZeppelin/openzeppelin-solidity/contracts/crowdsale/Crowdsale.sol";
import "browser/LetsTripContract.sol";

contract LetsTripCrowdsale is RefundablePostDeliveryCrowdsale {

    /**
     * Crowdsale constructor for Let's Trip Project. 
     * Creates and deploys also new instance of Let's Trip token's contract.
     * @param rate How many token units a buyer gets per wei
     * @param goal Minimum amount of funds to be raised in weis
     * @param wallet Address where funds are collected
     * @param openingTime Crowdsale opening time
     * @param closingTime Crowdsale closing time
     */ 
    constructor (uint256 rate, uint256 goal, 
            address payable wallet, uint256 openingTime, uint256 closingTime) 
        RefundableCrowdsale(goal) 
        TimedCrowdsale(openingTime, closingTime)
        Crowdsale(rate, wallet, new LetsTripContract()) public {
        //
    }

}