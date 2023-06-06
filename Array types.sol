// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.8.2 <0.9.0;

contract ArrayTypes {
    //Fixed Size Array
    uint[4] rollNumbers;

    function setRollNumbers(uint _index, uint _rollNumber) public {
        rollNumbers[_index] = _rollNumber;
    }

    function getRollNumbers() public view returns (uint[4] memory) {
        return rollNumbers;
    }

    //Dynamic Size Array
    uint[] employeeIds;

    function setEmployeeIds(uint _empId) public {
        employeeIds.push(_empId);
    }

    function removeEmployeeId() public {
        employeeIds.pop();
    }

    function getEmployeeIds() public view returns (uint[] memory) {
        return employeeIds;
    }

    //Multi-Dimensional Array

    // uint256[col][row] array_name
    uint[2][3]  data = [[1, 2], [3, 4], [5, 6]];

    function getData(uint _col, uint _row) public view returns (uint) {
        uint number = data[_col][_row];
        return number;
    }
    //String Array
    string[] stringArray = ["hi", "how", "are", "you"];
    function getstringArrayElement (uint index) public view returns (string memory) {
        return stringArray [index];
    }
    //JackArray
    uint[][] arr;

    constructor() {
        arr = new uint[][](2);
        arr[0] = new uint[](3);
        arr[1] = new uint[](2);

        uint count = 0;
        for (uint i = 0; i < arr.length; i++) {
            for (uint j = 0; j < arr[i].length; j++) {
                arr[i][j] = count++;
            }
        }
    }

    function getArray() public view returns (uint[][] memory) {
        return arr;
    }
    function getArrayLength() public view returns (uint) {
        return arr.length;
    }
}
