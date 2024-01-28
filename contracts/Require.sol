

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.2;


contract TestRequire{

    uint constant private MAX = 30;

    function check(uint number) public pure returns (bool){
        require(number <= MAX, "baba which way");
        return number <= MAX;
    }
}