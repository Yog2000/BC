// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.8.2 <0.9.0;

/*
Write a solidity program to create a smart contract by taking roll numbers of ten students from the user and 
perform OR operation of prime positioned numbers and AND operation of composite position numbers and,
Hence find the addmod of the result with todays date(13) and 
if the result is prime then display submission approved else deny.
*/

contract submissionallowordeny{
    uint DD = 7;
    uint[10] rollNumbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
    //  0,1,2,3,4,5,6,7,8,9
    uint[] primePosition;
    uint[] compositePosition;
    uint result;
    uint public orOps;
    uint public andOps;

    function setPrimePositionArray() public returns (uint[] memory) {
        for (uint i = 0; i < rollNumbers.length; i++) {
            if (isPrime(i)) {
                primePosition.push(rollNumbers[i]);
            }
        }
        return primePosition;
    }

    function setCompositeArray() public returns (uint[] memory) {
        for (uint i = 0; i < rollNumbers.length; i++) {
            if (isComposite(i)) {
                compositePosition.push(rollNumbers[i]);
            }
        }
        return compositePosition;
    }

    function OR() public returns (uint) {
        uint or = primePosition[0];

        for (uint i = 1; i < primePosition.length; i++) {
            or = or | primePosition[i];
        }
        orOps = or;
        return or;
    }

    function AND() public returns (uint) {
        uint and = compositePosition[0];

        for (uint i = 1; i < compositePosition.length; i++) {
            and = and & compositePosition[i];
        }
        andOps = and;
        return and;
    }

    function resultChecker() public view returns (uint, string memory) {
        string memory finalResult;
        if (isPrime(addmod(orOps, andOps, DD))) {
            finalResult = "Submission Approved";
        } else {
            finalResult = "Submission Denied";
        }
        return (addmod(orOps, andOps, DD), finalResult);
    }

    // <======================utility functions======================================>

    function isComposite(uint _number) private pure returns (bool) {
        if (_number <= 1) {
            return false;
        }
        for (uint i = 2; i <= _number / 2; i++) {
            if (_number % i == 0) {
                return true;
            }
        }
        return false;
    }

    function isPrime(uint _number) private pure returns (bool) {
        if (_number <= 1) {
            return false;
        }

        for (uint i = 2; i <= _number / 2; i++) {
            if (_number % i == 0) {
                return false;
            }
        }
        return true;
    }

    function getRollNo() public view returns (uint[10] memory) {
        return rollNumbers;
    }

    function getPrimePos() public view returns (uint[] memory) {
        return primePosition;
    }

    function getCompPos() public view returns (uint[] memory) {
        return compositePosition;
    }

    // <===== Invalid code for prime number extra flag variable is added instead directly returning true false. =====>
    // function primeChecker (uint _number) public pure returns(bool) {
    //         bool flag;
    //      if (_number <= 1) {
    //          flag= false;
    //         }
    //         for (uint i = 2; i < _number / 2; i++) {
    //             if (_number % i == 0) {
    //                 flag = false;
    //             } else {
    //                 flag = true;
    //             }
    //         }
    //         return flag;
}