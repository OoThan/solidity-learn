// SPDX-License-Identifier: UNLICENSE
pragma solidity >=0.4.22 <0.9.0;

contract EtherWei {
    uint public oneWei = 1 wei;
    // 1 wei is equal to 1
    bool public isOneWei = 1 wei == 1;

    uint public oneKwei = 1e3 wei;   // (babbage)
    // 1 kwei is equal to 1000
    bool public isOneKwei = 1000 wei == 1e3;

    uint public oneMwei = 1e6 wei;   // (lovelace)
    // 1 mwei is equal to 1,000,000
    bool public isOneMwei = 1000000 wei == 1e6;

    uint public oneGwei = 1e9 wei;   // (shannon)
    // 1 gwei is equql to 1,000,000,000
    bool public isOneGwei = 1000000000 wei == 1e9;

    uint public microether = 1e12 wei;
    // 1 microether is equal to 1,000,000,000,000
    bool public isMicroether = 1000000000000 wei == 1e12;

    uint public millether = 1e15 wei;
    // 1 millether is equal to 1,000,000,000,000,000
    bool public isMillether = 1000000000000000 wei == 1e15;

    uint public oneEther = 1 ether;
    // 1 ether is equal to 10^18 wei
    bool public isOneEther = 1 ether == 1e18;

}
