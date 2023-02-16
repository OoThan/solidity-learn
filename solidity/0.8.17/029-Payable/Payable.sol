// SPDX-License-Identifier: MIT
pragma solidity >=0.4.22 <0.9.0;

/*
    Functions and addresses declared payable can receive ether into the contract.
*/

contract Payable {
    // payable address can receive ether
    address payable public owner;

    // payable constuctor can receive ether
    constructor() payable {
        owner = payable(msg.sender);
    }

    // function to deposit ether into the contract
    // call this function along with some ether
    // the balance of this contact will be automatically is not payable.
    function deposit() public payable {}

    // call this funciton along with some ether
    // the function will throw an error since this function is not payable.
    function notPayable() public {}

    // function to withdraw all ether from this contract
    function wirhdraw() public {
        // get the amount of ether store in this contract
        uint amount = address(this).balance;

        // send all ether to owner
        // owner can receive ether since the address of owner is payable 
        (bool success, ) = owner.call{value: amount}("");
        require(success, "failed to send ether");
    }

    // function to transfer ether from this contract to address from input
    function transfer(address payable _to, uint _amount) public {
        // note that "to" is declared as payable
        (bool success,) = _to.call{value: _amount}("");
        require(success, "failed to send ether");
    }
}
