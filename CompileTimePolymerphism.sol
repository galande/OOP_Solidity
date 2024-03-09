// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

//Polymerphism Example - Compile Time Polymerphism - Function Overloading
 //Function Overloading - Same function name with different Parameters
contract CompileTimePolymerphismExample {

    //Add Function with 2 Params
    function add(uint _num1, uint _num2) public pure returns(uint) {
        return _num1 + _num2;
    }

    //Add Function with 3 Parms
    function add(uint _num1, uint _num2, uint _num3) public pure returns (uint) {
        return _num1 + _num2 + _num3;
    }
}