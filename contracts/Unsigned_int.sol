
// SPDX-License-Identifier: MIT
pragma solidity 0.8.26;

contract Unsigned_int {
    uint public myUint; //uninitialized //uint256

    uint8 public myUint8;

    int public myInt;

    function setMyUint(uint _myUint) public {
        myUint = _myUint;
    }

    function incrementUint8() public {
        myUint8++;
    }

    function decrementInt() public {
        myInt--;
    }
    
    function decrementUint() public {
        unchecked{
            myUint8--; //this unchecked block set the variable to max , then decrements happens
        }
    }
}