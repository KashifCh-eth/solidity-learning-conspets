// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

// There are four types of access modifiers available in Solidity.

abstract contract parttwo {
    uint256 public number;

    function UpdateNumberwithpublic() public {
        //   It is used to grant access within the contract as well as outside of the contract.
        number++;
    }

    function UpdateNumberwithExternal() external {
        // It is used to grant access only outside of the contract.
        number++;
    }

    function UpdateNumberwithInternal() internal {
        // It is used to grant access within the contract and all the contracts that inherit i
        number++;
    }

    function UpdateNumberwithPrivate() private {
        //Private: It is used to grant access only within a contract.
        number++;
    }
}

contract part is parttwo {
    function publicUpdate() public {
        // grant access within the contract and all the contracts that inherit
        UpdateNumberwithInternal();
    }
}
