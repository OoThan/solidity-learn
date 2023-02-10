// SPDX-License-Identifier: UNLICENSE
pragma solidity >=0.4.22 <0.9.0;

/*
    boolean
    uint
    int
    address
*/

contract PrimitiveDataTypes {
    
    bool public boo = true;

    /*
        uint stands for unsigned integer, meaning non negative integers different sizes are avaliable. (8 16 32 64 128 256)
            uint8 ranges from 0 to 2 ** 8 - 1
            uint16 ranges from 0 to 2 ** 16 - 1
            ...
            uint256 ranges from 0 to 2 ** 256 - 1
    */
    uint8 public u8 = 1;
    uint public u256 = 234;
    uint public u = 123; // uint is an alias of uint256

    /*
        Negative numbers are allowed for int types.
        Like uint, different ranges are avaliable from int8 to int256

            int128 ranges from -2 ** 127 to 2 ** 127 - 1
            int256 ranges from -2 ** 255 to 2 ** 255 - 1
    */
    int8 public i8 = 1;
    int public i256 = 256;
    int public i = -123;

    // minmum and maximum of int
    int public minInt = type(int).min;    // -57896044618658097711785492504343953926634992332820282019728792003956564819968
    int public maxInt = type(int).max;    // 57896044618658097711785492504343953926634992332820282019728792003956564819967

    address public addr = 0xCA35b7d915458EF540aDe6068dFe2F44E8fa733c;

    /*
        In Solidity, the data type byte represent a sequence of bytes.
        Solidity presnets two types of bytes types:

            - Fixed-sized byte arrays
            - Dynamically-sized byte arrays
        
        The term bytes in Solidity represents a dynamic array of bytes.
        It's a shorthand for byte[].
    */
    bytes1 a = 0xb5;
    bytes1 b = 0x56;

    /*
        Default values
        Unassigned varaiables have a default array of bytes.
    */
    bool public defaultBoo;         // false
    uint public defaultUnit;        // 0
    int public defaultInt;          // 0
    address public defaultAddress;  // 0x0000000000000000000000000000000000000000

}
