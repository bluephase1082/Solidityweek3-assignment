// SPDX-License-Identifier: MIT
pragma solidity ^0.8.28;

contract SimpleStorage {
    // Core data types

    uint256 public favoriteNumber;
    string public favoriteName;
    bool public isActive;
    address public owner;

    // Constructor - runs once when deployed
    constructor() {
        owner = msg.sender;
        isActive = true;
    }

    // Function to store a number
    function storeNumber(uint256 _favoriteNumber) public {
        favoriteNumber = _favoriteNumber;
    }

    // Function to store a name
    function storeName(string memory _name) public {
        favoriteName = _name;
    }

    // View function (reads from blockchain)
    
    function retrieveNumber() public view returns (uint256) {
        return favoriteNumber;
    }

    // Pure function (doesn't read/write blockchain state)

    function addTwoNumbers(uint256 a, uint256 b) public pure returns (uint256) {
        return a + b;
    }

    // Function to toggle the active state
    function toggleActive() public {
        isActive = !isActive;
    }
}
