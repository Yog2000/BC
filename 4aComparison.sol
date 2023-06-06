// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.8.2 <0.9.0;

contract ComparisonOperators {
    uint public number1 = 4;
    uint public number2 = 2;

    // ==
    function equalTo() public view returns (bool) {
        bool result = number1 == number2;
        return result;
    }

    // !=
    function notEqualTo() public view returns (bool) {
        bool result = number1 != number2;
        return result;
    }

    // <
    function lessThan() public view returns (bool) {
        bool result = number1 < number2;
        return result;
    }

    // <=
    function lessThanEqual() public view returns (bool) {
        bool result = number1 <= number2;
        return result;
    }

    // >
    function greaterThan() public view returns (bool) {
        bool result = number1 > number2;
        return result;
    }

    // >=
    function greaterThanEqual() public view returns (bool) {
        bool result = number1 >= number2;
        return result;
    }
}
