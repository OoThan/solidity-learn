// SPDX-License-Identifier: UNLICENSE
pragma solidity >=0.4.22 <0.9.0;

/*
    Array can have a compile-time fixed size or dynamic size.
*/

contract Array {
    // Several way to initialize an array
    uint[] public arr;
    uint[] public arr1 = [1, 2, 3];

    // Fixed sized array, all elements initialize to 0
    uint[10] public myFixedSizedArray;

    function get(uint i) public view returns (uint) {
        return arr[i];
    }

    // Solidity can return the entire array.
    // But this function should be avoided for arrays that can grow indefinited in length.
    function getArr() public view returns (uint[] memory) {
        return arr;
    }

    function push(uint _i) public {
        // Append to array
        // This will increase the array length 1
        arr.push(_i);
    }

    function pop() public {
        // remove last element from array
        // this will decrease the array length 1
        arr.pop();
    }

    function getLength() public view returns (uint) {
        return arr.length;
    }

    function remove(uint _index) public {
        // delete does not change the array length.
        // It resets the value at index to it's default value, in this case 0.
        delete arr[_index];
    }

    function examples() external {
        // create array in memory, only fixed size can created
        uint[] memory a = new uint[](5);
    }
}
