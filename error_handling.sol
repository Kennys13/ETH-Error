// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Error_handling {
    function require_test(uint256 a, uint256 b) external pure returns (uint256) {
        require(a > b, "a must be greater than b");
        uint256 result = a - b;
        return result;
    }
    
    function assert_test(uint256 a, uint256 b) external pure returns (uint256) {
        assert(a > b);
        uint256 result = a - b;
        return result;
    }
    
    function revert_test(uint256 a, uint256 b) external pure returns (uint256) {
        if (a <= b) {
            revert("a must be greater than b");
        }
        uint256 result = a - b;
        return result;
    }
}
