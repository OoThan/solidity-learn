pragma solidity >=0.4.16 <0.9.0;

contract Test {
    // This function is called for all messages sent to this contract (there is no other function).
    // Sending Ether to this contract will cause an exception, because the fallback function does not have the `payable` modifier.
    fallback() external { x = 1; }
    uint x;
}

contract TestPayable {
    // This function is called for all messages sent to this contract, expect plain Ether transfers
    // (there is no other function except the receive function).
    // Any call with no-empty calldata to this contract will execute the fallback function
    // (even if Ether is sent along with the call).
    fallback() external payable { x = 1; y = msg.value; }

    // This function is called for plain Ether transfers, i.e. for every call with empty calldata.
    receive() external payable { x = 2; y = msg.value; }    
    uint x;
    uint y;
}

contract Caller {
    function callTest(Test test) public returns (bool) {
        (bool success,) = address(test).call(abi.encodeWithSignature("nonExistingFunction()"));
        require(success);
        // result in test.x becoming == 1.

        // address(test) will not allow to call ``send`` directly, since ``test`` has no payable.
        address payable testPayable = payable(address(test));

        // If someone sends Ether to that contract, the transfer will fail, i.e. this returns false here.
        return testPayable.send(2 ether);
    }

    function callTestPayable(TestPayable test) public returns (bool) {
        (bool success,) = address(test).call(abi.encodeWithSignature("nonExistingFunction()"));
        require(success);
        // results in test.x becoming == 1 and test.y becoming 0.

        (success,) = address(test).call{value: 1}(abi.encodeWithSignature("nonExistingFunction()"));
        require(success);
        // results in test.x becoming == 1 and test.y becoming 1.

        // If someone sends Ether to that contract, the receive function in TestPayable will be called.
        require(address(test).send(2 ether));

        // results in test.x becoming == 2 and test.y becoming 2 ether.
    }
}
