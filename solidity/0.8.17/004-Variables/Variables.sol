// SPDX-License-Identifier: UNLICENSE
pragma solidity >=0.4.20 <0.9.0;

contract Variables {
    /*
        There are three types of variables.

        - Local
            declare inside a function
            not store on the blockchain
        - State
            declare outside a function 
            stored on the blockchain
        - global (provide information about the blockchain)
    */

    // State variables are stored on the blockchain.
    string public text = "Hello";
    uint public num = 123;

    function doSomething() public {
        // Local variables are not saved to the blockchain.
        uint i = 256;

        // Here are some global variables
        uint timestamp = block.timestamp;   // current block timestamp
        address sender = msg.sender;        // address of the caller
    }
}
