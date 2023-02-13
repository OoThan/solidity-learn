// SPDX-License-Identifier: UNLICENSE
pragma solidity >=0.4.22 <0.9.0;

contract Account {
    uint public balance;
    uint public constant MAX_UINT = 2 ** 256 - 1;

    function deposit(uint _amount) public {
        uint oldBalance = balance;
        uint newBalance = balance + _amount;

        // balance + _amount does not overflow if balance + _amount >= balance
        require(newBalance >= oldBalance, "overflow");

        balance = newBalance;
         
        assert(balance >= oldBalance);
    }

    function withdraw(uint _amount) public {
        uint oldBalance = balance;

        // balance - _amount does not underflow if balance >= _amount

        if (balance < _amount) {
            revert("underflow");
        }

        balance -= _amount;

        assert(balance <= oldBalance);
    }
}
