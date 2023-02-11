// SPDX-License-Identifier: UNLICENSE
pragma solidity >=0.4.22 <0.9.0;

/*
    Solidity supports for, while, and do while loops.

    Don't write loops that are unbounded as this can hit the gas limit, causing your transaction to fail.

    For the reason above, while and do while loops are rarely used.
*/

contract ForAndWhileLoop {

    function loop() public {
        
        // for loop
        for (uint i = 0; i < 10; i++) {
            if (i == 3) {
                // skip to next iteration with continue
                continue;
            }
            if (i == 5) {
                // exit loop with break
                break;
            }
        }

        // while loop
        uint j;
        while (j < 10) {
            j++;
        }
    }
}
