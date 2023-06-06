// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.8.2 <0.9.0;

contract rollnumberallowdeny {
    //uint256 [6] public number = [101, 102, 103, 201, 202, 203];
    //uint public count = 0;

    function checkAccess(uint256 _rollNumber) public pure returns (string memory) {
        
        uint256 date = 7;
        uint256 result = _rollNumber & date;
        //function Find() public view returns (string memory) {
            if(result %2 == 0) {
                return "Student Roll number is allowed";
        }
            else {
                return "Student Roll number is denied";
        }  
    }
}
