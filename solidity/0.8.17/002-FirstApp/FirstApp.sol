// SPDX-License-Identifier: UNLICENSE
pragma solidity >=0.4.20 <0.9.0;

contract Counter {
    uint public count;

    function get() public view returns (uint) {
        return count;
    }

    function inc() public {
        count++;
    }

    function dec() public {
        count--;
    }
}
