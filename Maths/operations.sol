pragma solidity ^0.5.13;

import "./math.sol";

      
contract Mycontract {
    
       uint public v1;
      
       uint public v2;
      
       int public v3;
      
       uint public v4;
       
        function add1(uint _val1, uint _val2) public {
           
           v1 = Math.add(_val1, _val2);
       }
       
        
        function subtract1(uint _val1, uint _val2) public {
           
           v2 = Math.subtract(_val1, _val2);
       }
       
       
        function multiply1(int _val1, int _val2) public {
           
           v3 = Math.multiply(_val1, _val2);
       }
       
       
        function divide1(uint _val1, uint _val2) public {
           
           v4 = Math.divide(_val1, _val2);
       }
}
