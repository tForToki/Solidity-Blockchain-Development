

// SPDX-License-Identifier: MIT
pragma solidity 0.8.26;

contract Constructor {

    address public myAddress;

    constructor(address _someAddress) { //constructor function , Auto deployed with calling of the constructor function
        myAddress = _someAddress;
    }

    function setMyAddress(address _myAddress) public {
        myAddress = _myAddress;
    }
    function setMyAddressToMsgSender() public {
        myAddress = msg.sender;
    }
}