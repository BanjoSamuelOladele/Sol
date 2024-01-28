// SPDX-License-Identifier: MIT

pragma solidity ^0.8.2;


contract Array {

    uint[] private arr;
    uint[] private myArr = [1, 2, 3, 4];

    uint[10] private fixedSize;

    function addToArray(uint num) public {
        arr.push(num);
    }
    function getArr () public view returns (uint[] memory){
        return arr;
    }
    function pushIn() public {
        myArr.push(66);
    }
    function getMyArr() public view   returns (uint[] memory){
        return myArr;
    } 

    function getFixedSize() public view returns (uint[10] memory){
        return fixedSize;
    }
}