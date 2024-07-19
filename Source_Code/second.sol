// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;
import "./multipleContracts.sol";

contract second {
    
    uint difference;
    function length(uint _diff) external{
        difference = _diff;
    }

    function comeToMe() public 
    returns (string memory){
        first instance = new first();
        return instance.sayhello();
    }
}