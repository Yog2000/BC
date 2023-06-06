// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.8.2 <0.9.0;

contract functionOverloading {
    function sum(uint _a, uint _b) public pure returns (uint) {
        uint result = _a + _b;
        return result;
    }

    function sum(uint _a, uint _b, uint _c) public pure returns (uint) {
        uint result = _a + _b + _c;
        return result;
    }

    function caller() public pure returns (uint, uint) {
        return (sum(2, 3), sum(5, 6, 7));
    }
}