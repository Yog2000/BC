// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.8.2 <0.9.0;

contract Calculator {
    int256 number1;
    int256 number2;

    function inputNumbers(int256 num1, int256 num2) public {
        number1 = num1;
        number2 = num2;
    }

    function add() public view returns (int256) {
        int256 result = number1 + number2;
        return result;
    }

    function sub() public view returns (int256) {
        int256 result = number1 - number2;
        return result;
    }

    function mul() public view returns (int256) {
        int256 result = number1 * number2;
        return result;
    }

    function div() public view returns (int256) {
        int256 result = number1 / number2;
        return result;
    }
}
