

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.2;


contract Map2{

    mapping(uint => string) private myMap;

    function addToList(uint num, string memory words) public {
        myMap[num] = words;
    }

    function getMap(uint num) public view  returns(string memory){
        return myMap[num];
    } 
}