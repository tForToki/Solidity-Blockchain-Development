
// SPDX-License-Identifier: MIT
pragma solidity 0.8.26;

contract SampleContract {
    
    string public myString = "Hello World !";

    function updateString(string memory _newString) public payable{
        if (msg.value == 1 ether) {
            myString = _newString;
        }
        else {
            payable (msg.sender).transfer(msg.value); // if the "if statement" doesn't work
            //then the paid amount will be revert 
        }
    }
}