// SPDX-License-Identifier: UNLICENSE
pragma solidity >=0.4.22 <0.9.0;

/* 
    Graph of inheritance
      A
     / \
    B   C
    / \ /
   F  D,E

   Solidity supports multiple inheritance. Contracts can inherit other contract by using the is keyword.
   Function that is going to be overridden by a child contract must be declared as virtual.
   Function that is going to overeide a parent function must use the keyword override.
   Order of inheritance is importance.
   You have to list the parent contract in the order from 'most base-like' to 'most-derived'.

*/

contract A {
    function foo() public pure virtual returns (string memory) {
        return "A";
    }
}

// Contract inherit other contracts by using the keywords 'is'
contract B is A {
    // override A.foo()
    function foo() public pure virtual override returns (string memory) {
        return "B";
    }
}

contract C is A {
    // override A.foo()
    function foo() public pure virtual override returns (string memory) {
        return "C";
    }
}

/*
    Contract can inherit from multiple parent contracts.
    When a function is called that is defined multiple times in different contracts, parent contracts are searched fron right to left, and in depeth-first manner.
*/
contract D is B, C {
    // D.foo() return "C"
    // since C is the right most parent contract with function foo()
    function foo() public pure override(B, C) returns (string memory) {
        return super.foo();
    }
}

contract E is C, B {
    // E.foo() 
    // since B is the right most parent contract with function foo()
    function foo() public pure override(C, B) returns (string memory) {
        return super.foo();
    }
}

// Inheritance must be orderd from "most be-like" to "most- deived"
// swapping the order of A and B will throw a compilation error.
contract F is A, B {
    function foo() public pure override(A, B) returns (string memory) {
        return super.foo();
    }
}
