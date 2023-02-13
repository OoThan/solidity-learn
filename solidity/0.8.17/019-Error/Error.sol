// SPDX-License-Identifier: UNLICENSE
pragma solidity >=0.4.22 <0.9.0;

/*
    An error will undo all changes made to the state during the transactins.
    You can throw an error by calling require, revert or assert.
        . require is used to validate inputs and conditions before execution.
        . revert is similar to require.
        . assert is used to check for code that should never be false. Failing assertion probably means that there is a bug.
*/

contract Error {
    function testRequire(uint _i) public pure {
        /* 
            require should be use to validate conditions
                - inputs 
                - conditions before execution
                - return values from calls to other features
        */
        require(_i > 10, "Input must be greater than 10");
    }

    function testRevert(uint _i) public pure {
        /*
            Revert is useful when the conditions to check is complex.
            this code does the exact same thing as the example above.
        */
        if (_i <= 10) {
            revert("Input must be grater than 10");
        }
    }

    uint public num;

    function testAssert() public view {
        /*
            Assert should only be used to test for internal errors, and to check invariants.
            Here we assert that num is always equal to 0 since it is impossible to update the value of num.
        */
        assert(num == 0);
    }

    // custom error
    error InsufficientBalance(uint balance, uint withdrawAmount);

    function testCustomError(uint _withdrawAmount) public view {
        uint bal = address(this).balance;
        if (bal < _withdrawAmount) {
            revert InsufficientBalance({balance: bal, withdrawAmount: _withdrawAmount});
        }
    }
}
