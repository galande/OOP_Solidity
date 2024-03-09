
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract Contract1 {
     uint public c1Number1;
     uint public c1Number2;

    function setc1Number(uint _c1Number1, uint _c1Number2) public {
        c1Number1 = _c1Number1;
        c1Number2 = _c1Number2;
    }

    function c1function() public pure returns(string memory) {
        return "I am contract 1 function";
    }
}

contract Contract2 is Contract1 {
     uint public c2Number;

    function setc2Number(uint _c2Number) public {
        c2Number = _c2Number;
    }

    function c2function() public pure returns(string memory) {
        return "I am contract 2 function";
    }

    function getSlotDetails(uint slotNumber) public view returns(uint valueAt0) {
        assembly {
            valueAt0 := sload(slotNumber)
        }
    }
}