// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.8.2 <0.9.0;

contract Birthdate {
    uint DD = 7;
    uint MM = 6;
    uint YY = 20;
    uint YYM = 0;

    uint public number1 = DD & MM;
    uint public number2 = YY | YYM;

    uint public modOfADDOfTwoNumbers = addmod(number1, number2, DD);
    uint public modOfMULOfTwoNumbers = mulmod(number1, number2, MM);
}