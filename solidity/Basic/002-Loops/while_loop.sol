pragma solidity >=0.4.16 <0.9.0;

contract WhileLoopTest {
    uint storedData;
    
    constructor() {
        storedData = 10;
    }

    function getResult() public view returns (string memory) {
        uint a = 10;
        uint b = 10;
        uint result = a + b;
        return integerToString(result);
    }

    function integerToString(uint _i) internal pure returns (string memory) {
        if (_i == 0) {
            return "0";
        }

        uint j = _i;
        uint len;

        while (j != 0) {
            len++;
            j /= 10;
        }

        bytes memory bstr = new bytes(len);
        uint k = len - 1;
      
        while (_i != 0) { // while loop
            bstr[k--] = byte(uint8(48 + _i % 10));
            _i /= 10;
        }

        return string(bstr);
    }

}
