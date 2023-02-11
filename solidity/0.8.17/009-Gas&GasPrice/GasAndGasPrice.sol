// SPDX-License-Identifier: UNLICENSE
pragma solidity >=0.4.22 <0.9.0;

/*
    Gas
    you pay gas spent * gas price amount of ether, where 
        . gas : is a unit of compution
        . gas spent : is the total amount of gas used in a transaction
        . gas price : is how much ether you are willing to pay per gas

    Transaction with higher gas price have higher priority to be included in a block.
    Unspent gas will be refunded.

    Gas Limit
    There are two upper bounds to the amount of gas you can spend
        . gas limit : max amount of gas you're willing to use for your transaction, set by you
        . block gas limit : max amount of gas allowed in a block, set by network
*/

contract GanAndGasPrice {
    uint public i = 0;

    // using up all of the gas that you send causes your transaction to fail.
    // State changes are undone.
    // Gas spent are not refunded.
    function forever() public {

        // Here we turn a loop until all of the gas are spent and transaction fail.
        while (true) {
            i += 1;
        }
    }
    
}
