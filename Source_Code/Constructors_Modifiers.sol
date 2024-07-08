// SPDX-License-Identifier: MIT
pragma solidity >=0.8.7;

contract blocktrain{
    address public owner;

    constructor(){
        owner = msg.sender;
    }

    uint256 public coins = 0;
    function add() public {
        require(coins<=3,"Too many Coins!");
        coins++;
    }

    modifier onlyOwner() { // act as filter to any function
        require(msg.sender == owner,"You are not the owner!");
        // require()
        _;
    }

    function subtract() public onlyOwner{
        coins--;
    }
}