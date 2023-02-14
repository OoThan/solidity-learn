// SPDX-License-Identifier: UNLICENSE
pragma solidity >=0.4.22 <0.9.0;

/*
    Unlike functions, state variables cannot be overridden by re-declaring in the child contract.
*/

contract A {
    string public name = "Contract A";

    function getName() public view returns (string memory) {
        return name;
    }
}

/*
    Shadowing is disallowed in solidity 0.6. This will not  compile
*/

contract C is A {
    // this is the correct way to override ingerited state variable 
    constructor() {
        name = "Contract C";
    }

    // C.game returns "Contract C"
}
