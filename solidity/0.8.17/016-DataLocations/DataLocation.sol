// SPDX-License-Identifier: UNLICENSE
pragma solidity >=0.4.22 <0.9.0;

/*
    Data Locations - Storage, Memory and Calldata
    Variables are declared as either srorage, memory and calldata to explicity specify the location of the data.

        . storage : variable is a stable variable (store on blockchain)
        . memory : variable is in memory and it exists while a function is being called
        . calldata : special data location that contains function arguments
*/

contract DataLocations {
    uint[] public arr;
    mapping(uint => address) map;
    struct MyStruct {
        uint foo;
    }
    mapping(uint => MyStruct) myStructs;

    function f() public {
        // call _f with state variables
        _f(arr, map, myStructs[1]);

        // get a struct from a mapping
        MyStruct storage myStruct = myStructs[1];

        // create a struct in memory
        MyStruct memory myMemStruct = MyStruct(0);
    }

    function _f(
        uint[] storage _arr,
        mapping(uint => address) storage _map,
        MyStruct storage _myStruct
    ) internal {

    }

    // you can return memory variables
    function g(uint[] memory _arr) public returns (uint[] memory) {
        // 
    }

    function h(uint[] calldata _arr) external {
        //
    }
}
