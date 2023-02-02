pragma solidity >=0.4.16 <0.9.0;

contract WithdrawalPatternTest {
    address payable public richest;
    uint public mostSent;

    constructor() payable {
        richest = payable(msg.sender);
        mostSent = msg.value;
    }

    function becomeRichest() public payable returns (bool) {
        if (msg.value > mostSent) {
            // Insecure practice
            richest.transfer(msg.value);
            richest = payable(msg.sender);
            mostSent = msg.value;
            return true;
        } else {
            return false;
        }
    }
}
