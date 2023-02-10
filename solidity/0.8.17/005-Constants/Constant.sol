// SPDX-License-Identifier: UNLICENSE
pragma solidity >=0.4.22 <0.9.0;

/*
    Constants are variables that cannot be modified.
    Their value is hard coded and using constants save gas cost.
*/

contract Constants {
    // coding convention to uppercase constant variables.
    address public constant MY_ADDRESS = 0x777788889999AaAAbBbbCcccddDdeeeEfFFfCcCc;
    uint public constant MY_UINT = 123;

}
