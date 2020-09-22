pragma solidity ^0.5.13;

contract Escrow {
    
     address public agent;
     
     mapping(address => uint) balance;
     
     modifier onlyAgent() {
        
          require(msg.sender == agent, "You are not the agent");
          _;
     }
     
     constructor () public {
         
         agent = msg.sender;
     }
     
     function  deposit(address payee) public payable {
         
         uint value = msg.value;
         
         balance[payee] += value;
     }
     
     function withdraw(address payable payee) public onlyAgent {
         
            uint val = balance[payee];
            
            balance[payee] = 0;
            
            payee.transfer(val);
            
            
     }
}
