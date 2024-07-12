// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract prachain {
    struct student {
    string name;
    string emailId;
    uint256 contactNumber;
    uint256 rollNumber;
    uint256 timestamp;
    }

    uint256 rollNumber = 1;
    mapping(uint256 => student) public studentDatabase;

    event studentAdded (
        string name,
        uint256 rollNumber,
        uint256 contactNumber,
        string emailId
    );

    function addStudent (
        string memory _name,
        string memory _emailId,
        uint256 _contactNumber
    ) public {
        studentDatabase[rollNumber].name = _name; 
        studentDatabase[rollNumber].emailId = _emailId; 
        studentDatabase[rollNumber].contactNumber = _contactNumber; 
        studentDatabase[rollNumber].rollNumber = rollNumber; 
        studentDatabase[rollNumber].timestamp = block.timestamp; 
        emit studentAdded( _name,rollNumber,_contactNumber,_emailId);
        rollNumber+=1;  
    }
}
