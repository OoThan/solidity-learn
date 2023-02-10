// SPDX-License-Identifier: UNLICENSE
pragma solidity >=0.4.22 <0.9.0;

/*
    Immutable variables are like constants. Variables of immutable can be set inside the constructor but cannot be modified afterwards.
*/

contract Immutable {
    // coding convention to uppercase constant variables
    address public immutable MY_ADDRESS;
    uint public immutable MY_UINT;

    constructor() {
        MY_ADDRESS = msg.sender;
        MY_UINT = 100;
    }
}
