// Definining Solidity Version
pragma solidity ^0.4;

// Create Contract Class
contract NotSoSmartContract {

    // Other Data Types available on Solidity:
    // bool, int, uint, address (20 byte Ethereum Address), bytes, mapping (hash table), struct
    uint public age;

    // You can also define constants, so they cannot be changed later on
    string constant firstName = 'Amruth';

    // Every contract has a constructor they can use
    // They must have the same name as the contract
    function NotSoSmartContract() public {
        age = 22;
    }

}
