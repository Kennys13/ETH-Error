pragma solidity ^0.8.0;

contract ErrorHandlingContract {
    function requireExample(uint256 a, uint256 b) external pure returns (uint256) {
        require(a > b, "a must be greater than b");
        uint256 result = a - b;
        return result;
    }
    
    function assertExample(uint256 a, uint256 b) external pure returns (uint256) {
        assert(a > b);
        uint256 result = a - b;
        return result;
    }
    
    function revertExample(uint256 a, uint256 b) external pure returns (uint256) {
        if (a <= b) {
            revert("a must be greater than b");
        }
        uint256 result = a - b;
        return result;
    }
}
