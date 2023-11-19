// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

contract ViewVsPure {
    uint256 x = 10;

    function MethodWithView(uint256 _y) public view returns (uint256) {
        // hey can view the state variable but can't modify it
        return x + _y;
    }

    function MethodWithPure(uint256 _x, uint256 _y)
        public
        pure
        returns (uint256)
    {
        //function declares that no state variable will be changed or read.
        return _x + _y;
    }
}
