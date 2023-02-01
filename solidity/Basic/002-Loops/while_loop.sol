pragma solidity >=0.4.16 <0.9.0;

contract WhileLoopTest {
    uint storedData;
    
    constructor() {
        storedData = 10;
    }

    function getResult() public view returns (string memory) {
        uint a = 2;
        uint b = 10;
        uint result = a + b;
        return integerToString(result);
    }

    function integerToString(uint256 _i) internal pure returns (string memory) {
        if (_i == 0) {
            return "0";
        }

        uint256 j = _i;
        uint256 len;

        while (j != 0) {
            len++;
            j /= 10;
        }

        bytes memory bstr = new bytes(len);
        uint256 k = len;
        j = _i;
      
        while (j != 0) { // while loop
            uint8 temp = uint8(48 + _i % 10);
            bytes1 b = bytes1(temp);
            bstr[k--] = bytes1(uint8(48 + j % 10));
            _i /= 10;
        }

        return string(bstr);
    }

}
