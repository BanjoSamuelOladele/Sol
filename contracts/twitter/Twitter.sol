// SPDX-License-Identifier: MIT

pragma solidity ^0.8.2;


contract Twitter{

    struct Tweet{
        address author;
        string content;
        uint timeTweeted;
        uint contentLike;
    }

    mapping (address => Tweet[]) private tweets;

    function createTweet(string memory _content) public {

        Tweet memory tweet = Tweet({
            author: msg.sender,
            content: _content,
            timeTweeted: block.timestamp,
            contentLike: 1
        });
        tweets[msg.sender].push(tweet);
    }

    function getTweetContent(uint index) public view returns(string memory){
        return tweets[msg.sender][index].content;
    }

    function getTweetIndex(uint index) public view returns (Tweet memory){
        return  tweets[msg.sender][index];
    }

    function getTweet() public view returns(Tweet[] memory){
        return tweets[msg.sender];
    }

}