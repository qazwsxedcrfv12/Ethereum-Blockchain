pragma solidity ^0.5.13;


import "./Allownace.sol";
    
   
   
   contract SimpleWallet is Allowance {
       
       
        event Moneysent(address indexed _bene, uint _amount);              // It is an event for ether sent to any account
       
        event Moneyrecieved(address indexed _for, uint _amount);          // It is an event for ether recieved from any account
        
        function withdraw(address payable _to, uint _amount) public  ownerorAllowed(_amount) {                         //Function which withdraw ether stored in smart contract to any particular account
             
            require(_amount <= address(this).balance, "Not enough Balance");  
            
            if(!isOwner()) {
                reduceallowance(msg.sender, _amount);
             }
             
             emit Moneysent(_to, _amount);
             _to.transfer(_amount);
        }
         
        
        function () external payable {                                 // Function to receive ether from account which deploys the smart contract
            
            emit Moneyrecieved(msg.sender, msg.value);
        }
    
       
   }
