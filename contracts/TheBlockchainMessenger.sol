
// SPDX-License-Identifier: MIT
pragma solidity 0.8.26;


contract TheBlockchainMessenger{

    address public owner;
    uint public changeCounter;
    string public myMessage;

    constructor() {
        owner = msg.sender;
    }
    function SetMyMessage(string memory _message) public {

        if (keccak256(abi.encodePacked(myMessage)) != keccak256(abi.encodePacked(_message))) {
            changeCounter++;// this is to check if repeats the same strings consequently , if so , count will 
            //not be incremented
        }
        if (msg.sender == owner) {
            myMessage = _message;
        }
        
    }
}