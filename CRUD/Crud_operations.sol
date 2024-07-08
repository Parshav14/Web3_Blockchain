// CRUD Operations
// SPDX-License-Identifier: MIT

pragma solidity >=0.8.7;

// contract crud {
//     uint256 public coin = 0;

//     function add() public {
//         coin+= 1;
//     }

//     function sub() public {
//         coin-=1;
//     }

//     function set(uint256 _coin) public {
//         coin = _coin;
//     }
// }

// Variable and Control Statements

contract blocktrain {
    // fixed size
    uint256 unsignedNumber;
    int256 Number;
    bool state;
    address user;
    bytes32 b;

    // dynamic size
    string s;
    bytes some;
    uint[] array;
    mapping(uint256 => mapping(uint256 => address)) database;

    // user-defined
    struct student{
        string name;
        uint256 rollNumber;
    }
    mapping(uint256 => student) studentDatabase;

    enum stateOfSomething{
        unstaked,
        staked
    }

    enum gameLevel{
        Novice,
        Intermediate,
        Expert
    }
    // gameLevel.Expert

    // Control Statements

    uint256 public coins = 0;
    function add(uint256 _num) public{
        if(_num < 100)
        {
            coins += _num;
        }
        else if(_num == 100)
        {
            coins -= 50;
        }
        else
        {
            coins = 500;
        }
    }
}
