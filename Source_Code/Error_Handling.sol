// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract checkErrors{

    function hello() public pure{
        require(5>9, "It's wrong");
    }

    function parshav() public pure {
        assert(5==5);
    }

    function singla() public pure {
        if(5!=7)
        {
            revert();
        }
    }
}