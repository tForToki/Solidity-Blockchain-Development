// SPDX-License-Identifier: MIT
pragma solidity 0.8.26;

contract MsgSender {
    
    address public someAddress;

    function updateSomeAddress() public {
        someAddress = msg.sender; // contains the address of the person who interacted with the smart contract 
    }
}