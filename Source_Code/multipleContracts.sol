// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract first {
    function sayhello()
    external 
    pure 
    returns(string memory)
    { 
        return "Hello!";
    }
}