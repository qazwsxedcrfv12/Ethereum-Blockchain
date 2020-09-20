pragma solidity ^0.5.13;

  import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/master/contracts/ownership/Ownable.sol";
  
  import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/master/contracts/math/SafeMath.sol";
  
  
    contract Allowance is Ownable {
        
        address public owner;
        
        using SafeMath for uint;
       
        event Allownacechanged(address indexed _forwho, address indexed _fromwhom, uint _oldamount, uint _newamount);
        
        mapping(address => uint) public allowance;
         
        function addallowance(address _who, uint _amount) public {
           
            emit Allownacechanged(_who, msg.sender, allowance[_who], _amount);
            allowance[_who] = _amount; 
        }
         
       
        modifier ownerorAllowed(uint _amount) {
             require(isOwner() || allowance[msg.sender] >= _amount, "You are not the owner");
             _;
         
         
        /* modifier onlyOwner() {
             require(msg.sender == owner, "you are not the owner");
             _;
         }*/
         
      
        function reduceallowance(address _who, uint _amount) internal {
            
                 emit Allownacechanged(_who, msg.sender, allowance[_who], allowance[_who].sub(_amount));
            allowance[_who] = allowance[_who].sub(_amount);
        }
         
        
    }
    
    
