// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract mychain {

    // Variables Visibility

    int private coins = 0;
    uint internal iamvar = 0;
    uint public myvar = 0;

    //  Functions Visibility

    function iAmPublic() public{
        // do anything
    }

    function its_Private() private{
        // do anything
    }

    function mine() internal{
        // do anything
    }

    function random() external{
        // do anything
    }


}