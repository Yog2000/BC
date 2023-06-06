// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.8.2 <0.9.0;
interface Calculator {
    function getResult() external view returns(uint);    
    }
contract Test is Calculator {
    constructor() {}
        function getResult() external pure returns (uint){
            uint a= 8;
            uint b= 20;
            uint result = a+b;
            return result;
        }
    }