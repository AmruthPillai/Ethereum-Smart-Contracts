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
    /* function NotSoSmartContract() public {
        age = 22;
    } */

    // Used to create events in order to send notice of updates
    event Details(
        string name,
        uint age
    );

    // Function to Set Details, to original variables
    function setDetails(string _firstName, uint _age) public {
        firstName = _firstName;
        age = _age;

        Details(_firstName, _age);
    }

    // Function to Get Details, returns values
    function getDetails() public constant returns (string, uint) {
        return (firstName, age);
    }

}
