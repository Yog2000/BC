// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.8.2 <0.9.0;

contract TernaryOperators {
    bool public loggedIn = true;

    function ternaryOperator() public view returns (string memory) {
        string memory result = (loggedIn)
            ? "user is loggedIn"
            : "user is not loggedIn";
        return result;
    }
}
