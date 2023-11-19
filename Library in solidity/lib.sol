// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

// used of libaray

library lib {
    function max(uint256 _x, uint256 _y) internal pure returns (uint256) {
        return _x > _y ? _x : _y;
    }

    function findElment(uint256[] storage arr, uint256 x)
        internal
        view
        returns (uint256)
    {
        for (uint256 i = 0; i < arr.length; i++) {
            if (arr[i] == x) {
                return i;
            }
        }
        revert("not found!");
    }
}

contract Mycontract {
    uint256[] arr = [1, 2, 3, 4];

    function findBig(uint256 Num1, uint256 Num2) public pure returns (uint256) {
        return lib.max(Num1, Num2);
    }

    function elmentinAarray(uint256 number) public view returns (uint256) {
        return lib.findElment(arr, number);
    }
}
