
// SPDX-License-Identifier: MIT
pragma solidity 0.8.26;


contract SendWithdrawMoney {

    uint public ReceivedEthValue;

    function deposit() public payable {
        ReceivedEthValue += msg.value; 
    }
    
    function getContractBalance() public view returns(uint){
        return address(this).balance;
    }
    
    function withdrawAll() public {
        
        address payable to = payable(msg.sender);
        to.transfer(getContractBalance());
    }

    function withdrawAlltoAddress(address payable to)  public {

        to.transfer(getContractBalance());

    }
        

}