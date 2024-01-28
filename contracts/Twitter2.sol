


// SPDX-License-Identifier: MIT
pragma solidity ^0.8.2;

contract Twitter{

    mapping (address => string) private tweets;


    function createTweet(string memory words) public {
        tweets[msg.sender] = words;
    }

    function getTweet(address addr) public view returns (string memory){
        return tweets[addr];
    }
}