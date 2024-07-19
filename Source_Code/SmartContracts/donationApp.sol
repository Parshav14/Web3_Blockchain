// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract DonationApp {
    event Donated(address indexed donor, uint256 amount);

    event Withdrawn(uint256 amount);

    address public owner;

    uint256 public totalDonations;

    mapping(address => uint256) public donations;

    modifier onlyOwner() {
        require(msg.sender == owner, "Only the owner can call this function");
        _;
    }

    constructor() {
        owner = msg.sender;
    }

    function donate() external payable {
        require(msg.value > 0, "Donation amount should be greater than 0");

        totalDonations += msg.value;
        donations[msg.sender] += msg.value;

        emit Donated(msg.sender, msg.value);
    }

    function withdraw(uint256 amount) external onlyOwner {
        require(amount <= address(this).balance, "Insufficient balance");

        payable(owner).transfer(amount);
        emit Withdrawn(amount);
    }

    function checkBalance() external view returns (uint256) {
        return address(this).balance;
    }
}