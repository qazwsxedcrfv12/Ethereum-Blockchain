pragma solidity ^0.5.13;

library Math {
    
        function divide(uint _a, uint _b) internal pure returns(uint) {
          
             require( _b > 0, "Divide by zero, error");
                
                 uint val = _a / _b;
            
            return val;
      }
      
        function multiply(int _a, int _b) internal pure returns(int) {
             
             int val = _a * _b;
           
          return val;
      }
      
        
        function subtract(uint _a, uint _b) internal pure returns(uint) {
             
             uint val;
            
             if(_a > _b)
                val = _a - _b;
             else
                val = _b - _a;
           
          return val;
      }
      
        function add(uint _a, uint _b) internal pure returns(uint) {
             
             uint val = _a + _b;
           
          return val;
      }
}     




