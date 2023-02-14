// SPDX-License-Identifier: UNLICENSE
pragma solidity >=0.4.22 <0.9.0;

contract A {
    event Log(string messge);

    function foo() public virtual {
        emit Log("a.foo called");
    }

    function bar() public virtual {
        emit Log("a.br called");
    }
}

contract B is A {
    function foo() public virtual override {
        emit Log("b.foo called");
        A.foo();
    }

    function bar() public virtual override {
        emit Log("b.bar called");
        super.bar();
    }
}
