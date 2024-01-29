// SPDX-License-Identifier: MIT

pragma solidity ^0.8.2;


contract Twitter{

    address private owner;
    uint private tweetLength;

    constructor(){
        owner = msg.sender;
        tweetLength = 300;
    }

    struct Tweet{
        address author;
        string content;
        uint timeTweeted;
        uint contentLike;
        uint id;
    }

    modifier onlyOwner(){
        require(msg.sender == owner, "Only owner allowed to perform action");
        _;
    }
    function changeTweetLength(uint newLenght) public onlyOwner{
        tweetLength = newLenght;
    }
    mapping (address => Tweet[]) private tweets;

    function createTweet(string memory _content) public {

        require(bytes(_content).length <= tweetLength, "exceed max text limit");
        Tweet memory tweet = Tweet({
            author: msg.sender,
            content: _content,
            timeTweeted: block.timestamp,
            contentLike: 0,
            id: tweets[msg.sender].length + 1
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

    function getOwner() public view returns (address){
        return owner;
    }

    function likeTweet(address addr, uint id) external {
        require(tweets[addr][id].id == id, "No tweet found");
        tweets[addr][id-1].contentLike += 1;
    }

    function unlikeTweet(address addr, uint id) external {
        require(tweets[addr][id].id == id, "No tweet found");
        require(tweets[addr][id - 1].contentLike > 0, "No like for this tweet");
        tweets[addr][id].contentLike -= 1;
    }

    function getA(address addr) public view returns(Tweet[] memory){
        return tweets[addr];
    }

}