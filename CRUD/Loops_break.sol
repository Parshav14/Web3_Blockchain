// SPDX-License-Identifier: MIT

pragma solidity >=0.8.7;

 contract loop {
    mapping(uint256 => string) public students;
    // Types of Loops

    // 1. For Loop
    function add(uint256 _num) public{
        for(uint256 i = 0; i<_num ; i++)
        {
            students[i] = "Loops";
        }
    }

    // 2. While Loop
    function addNames(string[] memory _names) public{
        uint256 i =0;
        while(i<_names.length) // Entry-Controlled Loop
        {
            students[i] = _names[i];
            i++;
        }
    }

    // 3. Do While Loop
    function letsBreak(uint256 _num) public{
        do{
            students[0] = "Blocktrain";
        }while(_num < 0); // Exit-Controlled Loop
    }


    // Break Keyword
    
    uint256 public coins = 0;
    function stopWhen() public {
        for(uint256 a = 0; a < 5; a++)
        {
            coins = a;
            if(coins == 4)
            {
                break;
            }
        }
    }

 }