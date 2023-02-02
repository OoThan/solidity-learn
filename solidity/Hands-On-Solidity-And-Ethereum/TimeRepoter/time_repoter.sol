pragma solidity >=0.4.16 <0.9.0;

contract TimeRepoter {
    event TimeLog(uint256 time);

    function reportTime() public {
        for (uint8 i = 0; i < 10; i++) {
            emit TimeLog(block.timestamp);
        }
    }
}
