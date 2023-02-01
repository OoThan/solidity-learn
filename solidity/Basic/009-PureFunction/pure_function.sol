pragma solidity >=0.4.16 <0.9.0;

contract PureFunctionTest {
    function getResult() public pure returns (uint product, uint sum) {
        uint a = 1;
        uint b =5;
        product = a + b;
        sum = a + b;
    }
}
