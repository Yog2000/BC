// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.8.2 <0.9.0;

contract evenOddANDPrime {
    uint num;
    function setNumber (uint _number) public { 
        num = _number;
    }
    function Evenandodd () public view returns (string memory) {
        if (num%2==0) {
            return "number is even.";
        } 
        else {
            return "number is odd.";
        } }
    function isPrime() public view returns (bool) { 
        if (num <= 1) {
            return false;
        }
        for (uint i = 2; i <= num / 2; i++) {
            if (num % i == 0) {
                return false;
        } }
        return true;
    }
    function isComposite() public view returns (bool) { 
        return !isPrime();
    }
}