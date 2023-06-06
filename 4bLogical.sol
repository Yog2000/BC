// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.8.2 <0.9.0;

contract ComparisonOperators {
    bool public amazonLogin = true;
    bool public netflixLogin = false;

    // !
    function logicalNot() public view returns (string memory) {
        string memory result;
        if (!netflixLogin) {
            result = "user is not logged in to netflix.";
        } else {
            result = "user is logged in to netflix.";
        }
        return result;
    }

    // &&
    function logicalAND() public view returns (string memory) {
        string memory result;
        if (netflixLogin && amazonLogin) {
            result = "User has logged in to both websites.";
        } else {
            result = "User has not logged in to one of the website.";
        }
        return result;
    }

    // ||
    function logicalOR() public view returns (string memory) {
        string memory result;
        if (netflixLogin || amazonLogin) {
            result = "User is logged in to one of the websites.";
        } else {
            result = "User is not logged in to both of the websites.";
        }
        return result;
    }
}
