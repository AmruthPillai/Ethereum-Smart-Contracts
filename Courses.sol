pragma solidity ^0.4.18;

contract Courses {

    struct Instructor {
        string fName;
        string lName;
        uint age;
    }

    mapping (address => Instructor) instructors;

    address[] public instructorAccounts;

    function setInstructor(address _address, string _fName, string _lName, uint _age) public {
        var instructor = instructors[_address];
        instructor.fName = _fName;
        instructor.lName = _lName;
        instructor.age = _age;

        instructorAccounts.push(_address) -1;
    }

    function getInstructors() view public returns (address[]) {
        return instructorAccounts;
    }

    function getInstructor(address _address) view public returns (string, string, uint) {
        return (instructors[_address].fName, instructors[_address].lName, instructors[_address].age);
    }

    function countInstructors() view public returns (uint) {
        return instructorAccounts.length;
    }

}
