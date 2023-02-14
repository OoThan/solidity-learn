// SPDX-License-Identifier: UNLICENSE
pragma solidity >=0.4.22 <0.9.0;

/*
    functions and state variables have to declare whether they are accessible by other contract.
    functions can be declared as:
        . public : any contract and account can call
        . private : only inside the contract that defines the function
        . internal : only inside contract that inherit an internal fucntion
        . external : only other contracts and accounts can call

    State Variable can be delared as public, private or internal and external
*/

contract Base {
    function privateFunc() private pure returns (string memory) {
        return "private func";
    }

    function testPrivateFunc() public pure returns (string memory) {
        return privateFunc();
    }

    function internalFunc() internal pure returns (string memory) {
        return "internal func";
    }

    function testInternalFunc() public pure virtual returns (string memory) {
        return internalFunc();
    }

    function publicFunc() public pure returns (string memory) {
        return "public func";
    }

    function testPublicFunc() external pure returns (string memory) {
        return publicFunc();
    }
}
