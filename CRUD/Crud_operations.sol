// SPDX-Licence-Identifier: MIT

// CRUD Operations
// SPDX-License-Identifier: MIT
pragma solidity >=0.8.7;

contract crud {
    uint256 public coin = 0;

    function add() public {
        coin+= 1;
    }

    function sub() public {
        coin-=1;
    }

    function set(uint256 _coin) public {
        coin = _coin;
    }
}