

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.2;


contract Tweet{

    mapping (address => string) private tweets;

    function createTweet(string memory _tweet) public {
        tweets[msg.sender] = _tweet;
    }

    function getTweet() public view returns (string memory){
        return tweets[msg.sender];
    }
}