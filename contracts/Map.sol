

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.2;

contract Map{

    mapping (address => string) private  myMap;
    
    function get(address num) public view  returns(string memory) {
        return myMap[num];
    }
    function add(address num, string memory words) public{
        myMap[num] = words;
    }
}