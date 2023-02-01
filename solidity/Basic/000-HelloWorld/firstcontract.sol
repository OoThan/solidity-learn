pragma solidity >=0.4.16 <0.9.0;

contract FirstContract {
    uint value;

    constructor() {
        value = 100;
    }

    function set(uint _value) public {
        value = _value;
    }

    function get() public view returns (uint) {
        return value;
    }
   
}