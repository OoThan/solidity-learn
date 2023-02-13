// SPDX-License-Identifier: UNLICENSE
pragma solidity >=0.4.22 <0.9.0;

/*
    Getter functions can be declared view or pure.
    View function declare that no state will be changed.
    Pure function declare that no state variable will be modified and read.
*/

contract ViewAndPure {
    uint public x = 1;

    // promise not to midify the state
    function addToX(uint y) public view returns (uint) {
        return x + y;
    }

    // promise not to modify or read from the state
    function add(uint i, uint j) public pure returns (uint) {
        return i + j;
    }
}
