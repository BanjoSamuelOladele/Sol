
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.2;



contract PausedToken{

    address private owner;
    bool private isPaused;
    
    mapping (address => uint) private balances;

    constructor(){
        owner = msg.sender;
        isPaused = false;
        balances[owner] = 2000;
    }

    modifier confirmOwner() {
        require(msg.sender == owner, "only owner allowed.");
        _;
    }

    modifier confirmPause(){
        require(isPaused == false, "it is paused");
        _;
    }

    function pause() public confirmOwner{
        isPaused = true;
    }

    function unpause() public confirmOwner {
        isPaused = false;
    }

    function transfer(address to, uint amount) public confirmPause {
        require(amount <= balances[msg.sender], "Insufficient amount");
        balances[msg.sender] -= amount;
        balances[to] += amount;
    }

    function getContractStatus() public view  confirmOwner returns (bool) {
        return isPaused;
    }

    function getbalace(address addr) public view  returns (uint){
        return balances[addr];
    }
}