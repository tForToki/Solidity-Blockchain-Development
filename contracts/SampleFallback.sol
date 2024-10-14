

// SPDX-License-Identifier: MIT
pragma solidity 0.8.26;


contract SampleFallback {
    
    uint public lastValueSent;

    string public lastFunctionCalled;

    uint public myUint;


    // "setMyUint(uint256)"
    // 0xe492fd840000000000000000000000000000000000000000000000000000000000000001
    // 0xe492fd84

    function setMyUint(uint _myUint) public {
        myUint = _myUint;
    }

    receive()  external  payable {//if there is no data passed then it will automatically trigger the receive 
                                    //or we need to define a fallback function if data is passed
        lastValueSent = msg.value;

        lastFunctionCalled = "receive";
     }

    fallback() external payable { 
        // payable is optional here
        lastValueSent = msg.value;
        lastFunctionCalled = "fallback";
    }
}