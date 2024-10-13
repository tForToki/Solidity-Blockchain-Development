
// SPDX-License-Identifier: MIT
pragma solidity 0.8.26;

contract ViewPure{

    uint public myStorageVariable; // any storage variable

    function getMyStorageVariable() public view returns (uint) { // can access storage variable outside the scope
        return myStorageVariable;
    }

    function getAddition(uint a, uint b) public pure returns(uint) {
        return  a+b; //
    }
    
    function setMyStorageVariable(uint _myStorageVariable) public {
        myStorageVariable = _myStorageVariable;
    }
    
}