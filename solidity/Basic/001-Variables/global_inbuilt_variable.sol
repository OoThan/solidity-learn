pragma solidity >=0.4.16 <0.9.0;

contract GasCostCalculator {
    uint public gasCost;
    uint public basefee;

    constructor() {
        gasCost = tx.gasprice;
        basefee = block.basefee;
    }
}