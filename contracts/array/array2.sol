


// SPDX-License-Identifier: MIT
pragma solidity ^0.8.2;


contract array2{


   mapping (address => string[]) private here;


   function addWords(string memory words) public {
        here[msg.sender].push(words);
   }

   function getIt() public view returns (string[] memory){
        return here[msg.sender];
   }
}