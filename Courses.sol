pragma solidity ^0.4.18;

// Inheritance
contract Owned {

    address owner;

    function Owned() public {
        owner = msg.sender;
    }

    modifier onlyOwner() {
        require(msg.sender == owner);
        _;
    }

}

// Add 'is Owned' here
contract Courses is Owned {

    struct Instructor {
        bytes16 fName;
        bytes16 lName;
        uint age;
    }

    mapping (address => Instructor) instructors;

    address[] public instructorAccounts;

    event InstructorInfo(
        bytes16 fName,
        bytes16 lName,
        uint age
    );

    // Add onlyOwner here
    function setInstructor(address _address, bytes16 _fName, bytes16 _lName, uint _age) onlyOwner public {
        var instructor = instructors[_address];

        instructor.fName = _fName;
        instructor.lName = _lName;
        instructor.age = _age;

        instructorAccounts.push(_address);
        InstructorInfo(_fName, _lName, _age);
    }

    function getInstructors() view public returns (address[]) {
        return instructorAccounts;
    }

    function getInstructor(address _address) view public returns (bytes16, bytes16, uint) {
        return (instructors[_address].fName, instructors[_address].lName, instructors[_address].age);
    }

    function countInstructors() view public returns (uint) {
        return instructorAccounts.length;
    }

}
