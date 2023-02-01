pragma solidity >=0.4.16 <0.9.0;

contract ViewFunctionTest {
    function getResult() public view returns (uint product, uint sum) {
        uint a = 1;
        uint b = 2;

        product = a + b;
        sum = a + b;
    }
}
