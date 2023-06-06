// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.8.2 <0.9.0;

contract allowDenyStudent {
    uint256[10] public rollNumbers;

    function setRollNumber(uint _index, uint _rollNumber) public {
        // push() method is not available on fixed size array.
        rollNumbers[_index] = (_rollNumber);
    }

    function seperatingEvenOdd() public {
        for (uint i = 0; i < rollNumbers.length; i++) {
            if (i % 2 == 0) {
                evenPositioned.push(rollNumbers[i]);
            } else {
                oddPositioned.push(rollNumbers[i]);
            }
        }
    }

    uint[] public evenPositioned;
    uint[] public oddPositioned;

    function OR_AND_Operation() public {
        uint resultOfOR = evenPositioned[0];
        for (uint i = 1; i < evenPositioned.length; i++) {
            resultOfOR = resultOfOR | evenPositioned[i];
        }

        uint resultOfAND = oddPositioned[0];
        for (uint i = 1; i < oddPositioned.length; i++) {
            resultOfAND = resultOfAND & oddPositioned[i];
        }
        productOfresults = resultOfOR * resultOfAND;
    }

    uint256 public productOfresults;

    function checkProductOfResults() public view returns (bool) {
        bool flag;
        for (uint i = 0; i < rollNumbers.length; i++) {

            if(productOfresults == rollNumbers[i]) {
                flag = true;
                break;
            }    

        }
        return flag;
    }
}
