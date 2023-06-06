// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.8.2 <0.9.0;

contract MumbaiUniversity {
    uint256[] internal rollNumbers;

    constructor() {
        for (uint256 i = 0; i < 20; i++) {
            rollNumbers.push(i + 3);
        }
    }

    function getRollNumbers() public view returns (uint[] memory) {
        return rollNumbers;
    }
}

contract MLDC is MumbaiUniversity {
    uint256[] private enrolledToMLDC;

    constructor() {
        for (uint256 i = 0; i < 10; i++) {
            enrolledToMLDC.push(rollNumbers[i]);
        }
    }

    function getEnrolledM() public view returns (uint256[] memory) {
        return enrolledToMLDC;
    }

    function factorialOfFirstFour() public view returns (uint256[4] memory) {
        uint256[4] memory factorials;
        for (uint256 i = 0; i < 4; i++) {
            uint256 num = enrolledToMLDC[i];
            uint256 factorial = 1;
            for (uint256 j = 2; j <= num; j++) {
                factorial *= j;
            }
            factorials[i] = factorial;
        }
        return factorials;
    }
}

contract Sathaye is MumbaiUniversity {
    uint256[] private enrolledToSATHAYE;

    constructor() {
        for (uint256 i = 10; i < rollNumbers.length; i++) {
            enrolledToSATHAYE.push(rollNumbers[i]);
        }
    }

    function getEnrolledS() public view returns (uint256[] memory) {
        return enrolledToSATHAYE;
    }

    function factorialOfFirstFour() public view returns (uint256[4] memory) {
        uint256[4] memory factorials;
        for (uint256 i = 0; i < 4; i++) {
            uint256 num = enrolledToSATHAYE[i];
            uint256 factorial = 1;
            for (uint256 j = 2; j <= num; j++) {
                factorial *= j;
            }
            factorials[i] = factorial;
        }
        return factorials;
    }
}
