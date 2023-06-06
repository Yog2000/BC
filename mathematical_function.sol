// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.8.2 <0.9.0;

contract MathematicalFunction {
    function addmodOperation (uint256 a, uint256 b, uint256 c) public pure returns (uint256) {
        return addmod(a, b, c);
    }
    function mulmodOperation (uint256 a, uint256 b, uint256 c) public pure returns (uint256) {
        return mulmod(a, b, c);
    }
    //uint public number1 = 7;
    //uint public number2 = 8;

    //uint public modOfADDOfTwoNumbers = addmod(number1, number2, 2);
    //uint public modOfMULOfTwoNumbers = mulmod(number1, number2, 4);
}