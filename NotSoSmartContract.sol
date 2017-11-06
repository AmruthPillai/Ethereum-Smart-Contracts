// Definining Solidity Version
pragma solidity ^0.4.18;

// Create Contract Class
contract NotSoSmartContract {

    // Other Data Types available on Solidity:
    // bool, int, uint, address (20 byte Ethereum Address), bytes, mapping (hash table), struct
    string firstName;
    uint age;

    // Every contract has a constructor they can use
    // They must have the same name as the contract
     function NotSoSmartContract() public {
        age = 18;
    }

    // Function to Set Instructor Information, to original variables
    function setInstructor(string _firstName, uint _age) public {
        firstName = _firstName;
        age = _age;
    }

    // Function to Get Instructor Information, returns values
    function getInstructor() public constant returns (string, uint) {
        return (firstName, age);
    }

}
