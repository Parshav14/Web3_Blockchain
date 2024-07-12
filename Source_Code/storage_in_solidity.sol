// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract mychain {
    // storage is done in 4 ways guys!
    // 1. storage -> stored on blockchain
    // eg. int256 coin = 5;
    // 2. memory -> the variables are stored and have a lifetime
    // eg. function add(string memory data){
    //     // lifetime started
    //     // do anything
    //     // lifetime ended
    // }
    // 3. stack -> all variables declared in function are stored in stack
    // eg. function sub(){
    //     int256 a;
    //     string b;
    //     declare min. no variables only
    // }
    // 4. Calldata -> same as memory, except the variable has lifetime but are immutable
    // eg. function add(string calldata data){
    //     // lifetime started
    //     // do anything
    //     // lifetime ended
    // }
}