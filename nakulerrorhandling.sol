//SPDX-License-Identifier: MIT
pragma solidity 0.8.7;
contract nakulerrorhandling{
    uint public num;
    function testRequire(uint num1) public pure{
        require(num1<10,"Number is greater than 10, please enter number smaller than 10");
    }
    function testAssert(uint num2) public pure {
        assert(num2<10);
    }
    function testRevert(uint num3) public{
        if(num3>10){
          revert("Number is greater than 10");
        }
        else{
            num=num3;
        }
        
    }
}
