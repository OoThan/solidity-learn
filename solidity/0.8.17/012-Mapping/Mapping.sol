// SPDX-License-Identifier: UNLICENSE
pragma solidity >=0.4.22 <0.9.0;

contract Mapping {
    // mapping from address to uint
    mapping(address => uint) public MyMap;

    function get(address _addr) public view returns (uint) {
        // Mapping always returns a value
        // If the value was never set, it will return default value.
        return MyMap[_addr];
    }

    function set(address _addr, uint _i) public {
        // update the value at this address
        MyMap[_addr] = _i;
    }

    function remove(address _addr) public {
        // Reset the value to the default value
        delete MyMap[_addr];
    }
}

contract NestedMapping {
    // Nested mapping (mapping from address to another mapping)
    mapping(address => mapping(uint => bool)) public nested;

    function get(address _addr1, uint _i) public view returns (bool) {
        // You can get values from a nested mapping even when it is not initialized.
        return nested[_addr1][_i];
    }

    function set(address _addr1, uint _i, bool _boo) public {
        nested[_addr1][_i] = _boo;
    }

    function remove(address _addr1, uint _i) public {
        delete nested[_addr1][_i];
    }
}
