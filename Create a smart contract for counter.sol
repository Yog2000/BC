// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.8.2 <0.9.0;

contract counter {
    uint256 private count =0;
    function getcount() public view returns (uint256) {
        return count;
    }
    function increment() public {
        count +=1;
    }
}