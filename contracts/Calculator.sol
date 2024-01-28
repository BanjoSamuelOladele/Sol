
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.2;


contract Calculator{

    uint private result;


    function add(uint number) public {
        result += number;
    }

    function substract(uint number) public {
        result -= number;
    }

    function divide(uint number) public {
        result /= number;
    }

    function multiply(uint number) public {
        result *= number;
    }

    function getResult() public view returns (uint){
        return result;
    }
}