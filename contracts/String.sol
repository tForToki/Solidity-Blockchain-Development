// SPDX-License-Identifier: MIT
pragma solidity 0.8.26;

contract String {

    string public myString = "Hello World!";
    bytes public myBytes = "Hello World!";


    function setMyString (string memory _myString) public {
        myString = _myString;
    }

    function compareTwoStrings(string memory _myString) public view returns(bool) {
        return keccak256(abi.encodePacked(myString)) == keccak256(abi.encodePacked(_myString));  
    }

}