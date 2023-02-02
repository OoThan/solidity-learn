pragma solidity >=0.4.16 <0.9.0;

contract FunctionOverloadTest {
    function getSum(uint a, uint b) public pure returns (uint) {
        return a + b;
    }

    function getSum(uint a, uint b, uint c) public pure returns (uint) {
        return a + b + c;
    }

    function callSumWithTwoArguments() public pure returns (uint) {
        return getSum(10 , 30);
    }

    function callSumWithThreeArguments() public pure returns (uint) {
        return getSum(10, 20, 30);
    }
}
