// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.8.2 <0.9.0;

contract Bitwise {
    int public a = 10;
    int public b = 12;

    // & (Bitwise AND)
    int public OfAND = a & b;

    // | (BitWise OR)
    int public OfOR = a | b;

    // ^ (Bitwise XOR)
    int public OfXOR = a ^ b;

    // ~ (Bitwise Not)
    int public OfNOT = (~a);

    // << (Left Shift)
    int public OfLEFTSHIFT = a << 2;

    // >> (Right Shift)
    int public OfRIGHTSHIFT = a >> 2;
}
