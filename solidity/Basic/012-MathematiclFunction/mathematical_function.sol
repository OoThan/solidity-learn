pragma solidity >=0.4.16 <0.9.0;

contract MathFuctionTest {
    function callAddMod() public pure returns (uint) {
        return addmod(10, 20, 3);
    }

    function callMulMod() public pure returns (uint) {
        return mulmod(10, 20, 3);
    }
}
