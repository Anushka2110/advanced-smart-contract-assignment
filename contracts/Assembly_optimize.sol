pragma solidity ^0.4.0;

contract Assembly_optimize {
    
    function nativeLoops() public pure returns (uint _r) {
        for(uint i = 0; i < 10; i++)
        _r++;
    }
    
     function asmLoops() public returns (uint _r) {
        assembly {
            let i := 0
            loop:
            i := add(i, 1)
            _r := add(_r, 1)
            jumpi(loop, lt(i, 10))
        }
    }
   
   
    

    uint[] private array1;
    
   function Arr(uint[] _arr1) public {
       array1 = _arr1;
      
    } 
    
    function asmArr(uint[] _arr) public
     returns (bytes _ptr){
        assembly {
            let len := mload(_arr)
            _ptr := msize()
            
            // Bytes
            mstore(_ptr, mul(add(len, 2), 0x20))
            
            // Array 
            mstore(add(_ptr, 0x20), 0x20)
            mstore(add(_ptr, 0x40), len)
            
            let idx := 0
            loop:
            jumpi(end, eq(len, idx))
            mstore(add(_ptr, add(mul(idx,0x20),0x60)), mload(add(_arr, add(0x20, mul(idx, 0x20)))))
            idx := add(idx, 1)
            jump(loop)
            
            end:
            mstore(0x40, add(mul(len, 0x20), 0x20))
        }
    }
}

