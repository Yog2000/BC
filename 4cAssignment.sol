// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.8.2 <0.9.0;

contract AssignmentOperators {
    //  =
    function simpleAssignment() public pure returns (string memory) {
        string memory result = "simple assignment";
        return result;
    }

    // +=
    function AddAndAssignment() public pure returns (uint) {
        uint result = 1;
        result += 2;
        return result;
    }

    // -=
    function SubAndAssignment() public pure returns (uint) {
        uint result = 6;
        result -= 2;
        return result;
    }

    // *=
    function MulAndAssignment() public pure returns (uint) {
        uint result = 6;
        result *= 2;
        return result;
    }

    // /=
    function DivAndAssignment() public pure returns (uint) {
        uint result = 6;
        result /= 2;
        return result;
    }

    // %=
    function ModAndAssignment() public pure returns (uint) {
        uint result = 6;
        result %= 4;
        return result;
    }
}
