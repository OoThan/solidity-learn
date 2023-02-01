pragma solidity >=0.4.16 <0.9.0;

contract Counter {
    uint public count;

    constructor() {
        count = 1000;
    }

    // Function to get the current count
    function get() public view returns (uint) {
        return count;
    }

    // Function to increment count by 1
    function inc() public {
        count += 1;
    }

    // Function to decrement count by 1
    function dec() public {
        // this function will fail if count is 0
        count -= 1;
    }
}
