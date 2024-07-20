// SPDX-License-Identifier: MIT

pragma solidity 0.8.18;

contract nakulerrorhandling{

    uint public count=0;

    function testRequire(uint amount) public{
        require(amount > 818,"Amount should be greater than 818");
        count++;
    }

    function testRevert(uint amount) public {
        if(!(amount > 818)){
            revert("Amount must be greater than 818");
        }
        count++;
    }

    function testAssert(uint amount) public{
        assert(amount > 512);
        count++;
    }

    error CustomError(uint amount, string message);

    function testCustomError(uint amount) public{
        if(amount <= 267){
            revert CustomError(amount,"Amount must be greater than 267");
        }
        count++;
    }
}
