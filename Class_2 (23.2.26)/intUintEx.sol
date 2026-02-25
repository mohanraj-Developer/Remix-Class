//Uint and int Examples

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract IntegerExample {

    // Unsigned Integer (only positive)
    uint public balance;

    // Signed Integer (positive & negative)
    int public profitOrLoss;

    int public TotalAmount;

    constructor() {
        balance = 1000;        // uint example
        profitOrLoss = -200;   // int example

    }

    // Add amount to balance (uint)
    function deposit(uint amount) public {
        balance += amount;
    }

    // Update profit or loss (int)
    function updateProfit(int amount) public {
        profitOrLoss += amount;
    }

    function sum() public{
        TotalAmount = int(balance) + profitOrLoss;
    }

    // Return both values
    function getValues() public view returns (uint, int, int) {
        return (balance, profitOrLoss, TotalAmount);
    }

}
/** function Add( uint a, uint b) public pure returns (uint){
        return a+b;**/