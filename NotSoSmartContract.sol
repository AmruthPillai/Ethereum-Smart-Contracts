// Definining Solidity Version
pragma solidity ^0.4.18;

// Create Contract Class
contract NotSoSmartContract {

    // Other Data Types available on Solidity:
    // bool, int, uint, address (20 byte Ethereum Address), bytes, mapping (hash table), struct

    // To store details of person
    string firstName;
    uint age;

    // To store the address of the owner of contract
    address owner;

    // Constructor
    function NotSoSmartContract() public {
        owner = msg.sender;
    }

    // Function Modifier
    // Sort of like middleware
    modifier onlyOwner {
        require(msg.sender == owner); // Message Sender must be same as the Owner of Contract
        _; // Continue processing the rest of the function body
    }

    // Used to create events in order to send notice of updates
    event Details(
        string name,
        uint age
    );

    // Function to Set Details, to original variables
    function setDetails(string _firstName, uint _age) onlyOwner public {
        firstName = _firstName;
        age = _age;

        Details(_firstName, _age);
    }

    // Function to Get Details, returns values
    function getDetails() public constant returns (string, uint) {
        return (firstName, age);
    }

}
