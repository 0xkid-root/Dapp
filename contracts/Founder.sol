// SPDX-License-Identifier: MIT
pragma solidity >=0.4.22 <0.9.0;

contract Founder{
    uint public numOfFounder;
    mapping(uint=>address) private founders;
    receive() external payable{}
     
    function transfer() external payable{
        founders[numOfFounder]=msg.sender;
    }
    function withdraw(uint withdrawAmount) external{
        require(withdrawAmount<=2000000000000000000,"cannot withdraw more than 2 ether.");
        payable(msg.sender).transfer(withdrawAmount); 

    }
}


