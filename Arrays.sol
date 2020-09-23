pragma solidity ^0.5.13;

contract Array {
    
      uint[] public myarray = [1, 2, 3];
      
      string[] public myarray1 = ["Apple", "Banana", "Orange", "Litchi"];
      
      uint[][] public twodarray = [ [1, 2,3 ], [4, 5, 6] ];                    // Two-Dimensional array
      
     
      function appendvalue(string memory _val) public {                        //appends the value at the end of the array
          
            myarray1.push(_val);
      }
      
    
      function countlength() public view returns(uint) {                      // returns the length of the array
           
           return myarray1.length;
      }
      
}
