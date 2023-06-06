// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.8.2 <0.9.0;

contract oveloadingChallenge {
    /*
    write a smart contract to take user input of your  fyit roll number,
    fy and sy roll number,
    fy sy ty roll numbers in three different methods with same name and hence

    find modulus of addition of sy roll number and fy roll number with ty roll number.
    

     note: fy roll number between 0 to 200 
            sy roll number between 201 to 400
            ty roll number between 401 to 600

            if the modulus value is equal to the sum then display valid roll numbers else 
            display miss matched sequence.
*/

    uint public fyit;
    uint public syit;
    uint public tyit;

    function takeRollNo(uint _fyit) private returns (uint) {
        require(_fyit >= 0 && _fyit <= 200, "Invalid FY roll number");

        fyit = _fyit;
        return _fyit;
    }

    function takeRollNo(uint _fyit, uint _syit) private returns (uint) {
        require(_syit >= 201 && _syit <= 400, "Invalid SY roll number");

        fyit = _fyit;
        syit = _syit;
        return _syit;
    }

    function takeRollNo(
        uint _fyit,
        uint _syit,
        uint _tyit
    ) private returns (uint) {
        require(_tyit >= 401 && _tyit <= 600, "Invalid TY roll number");

        fyit = _fyit;
        syit = _syit;
        tyit = _tyit;
        return _tyit;
    }

    function caller() public returns (uint, uint, uint) {
        return (takeRollNo(1), takeRollNo(1, 201), takeRollNo(1, 201, 600));
    }

    // uint public modulus = addmod(fyit, syit, tyit);
    // uint public syPlusFy = syit + fyit;

    function finalCall() public view returns (string memory, uint, uint) {
        uint modulus = addmod(fyit, syit, tyit);
        uint syPlusFy = syit + fyit;

        if (modulus == syPlusFy) {
            return ("Valid roll numbers", syPlusFy, modulus);
        } else {
            return ("Mismatched sequence", syPlusFy, modulus);
        }
    }
}