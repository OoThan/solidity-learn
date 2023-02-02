pragma solidity >=0.4.16 <0.9.0;

contract CryptographicFunctionTest {
    function callKeccak256() public pure returns (bytes32 result) {
        return keccak256("ABCDEF");
    }
}
