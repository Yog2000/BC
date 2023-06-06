// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.8.2 <0.9.0;

/*
    Create a smart contract considering last three digits of PNR number of three passangers taken
    from the user and perform the following operation for every passanger by keeping the same operation name.
    a) AND operation with DD(13).
    b) AND operation with DD and MM(05)
    c) AND operation with DD, MM, YY(23)

    Finally perform modulus of multiplication of the results of first two operation with the third,
    and the person whose value is the largest gets the upper birth and passanger with the lowest value get the lower birth
*/

contract oveloadingChallenge {
    uint[3] public pnrNumbers = [102, 103, 104];

    uint[] public op1Result;
    uint[] public op2Result;
    uint[] public op3Result;

    function operation(uint _dd) public returns (uint[] memory) {
        for (uint i = 0; i < pnrNumbers.length; i++) {
            uint element = pnrNumbers[i] & _dd;
            op1Result.push(element);
        }
        return op1Result;
    }

    function operation(uint _dd, uint _mm) public returns (uint[] memory) {
        for (uint i = 0; i < pnrNumbers.length; i++) {
            uint element = pnrNumbers[i] & _dd & _mm;
            op2Result.push(element);
        }

        return op2Result;
    }

    function operation(
        uint _dd,
        uint _mm,
        uint _yy
    ) public returns (uint[] memory) {
        for (uint i = 0; i < pnrNumbers.length; i++) {
            uint element = pnrNumbers[i] & _dd & _mm & _yy;
            op3Result.push(element);
        }

        return op3Result;
    }

    function caller()
        public
        returns (uint[] memory, uint[] memory, uint[] memory)
    {
        return (operation(15), operation(15, 5), operation(15, 5, 23));
    }

    function birthAssigner() public view returns (string memory) {
        uint mulmod1 = mulmod(op1Result[0], op2Result[0], op3Result[0]);
        uint mulmod2 = mulmod(op1Result[1], op2Result[1], op3Result[1]);
        uint mulmod3 = mulmod(op1Result[2], op2Result[2], op3Result[2]);

        string memory print;

        if ((mulmod1 > mulmod2) && (mulmod1 > mulmod3)) {
            print = "Upper birth is assigned to user1";
        } else if ((mulmod2 > mulmod3) && (mulmod2 > mulmod1)) {
            print = "Upper birth is assigned to user2";
        } else if ((mulmod3 > mulmod1) && (mulmod3 > mulmod2)) {
            print = "Upper birth is assigned to user3";
        } else if (!((mulmod1 > mulmod2) && (mulmod1 > mulmod3))) {
            print = "Lower birth is assigned to user1";
        } else if (!((mulmod2 > mulmod3) && (mulmod2 > mulmod1))) {
            print = "Lower birth is assigned to user2";
        } else {
            print = "Lower birth is assigned to user3";
        }
        return print;
    }
}