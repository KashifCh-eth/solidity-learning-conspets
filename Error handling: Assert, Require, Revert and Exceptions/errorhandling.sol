// SPDX-License-Identifier: MIT

// in this contract you will learn how to user error handling in solidity

pragma solidity ^0.8.19;

contract Part {
    address Owner;
    uint256 number;

    constructor() {
        Owner = msg.sender;
    }

    modifier isOwner() {
        // assert(); condition with no argumeants {internal} use
        assert(msg.sender == Owner); // high gass
        _;
    }

    modifier isOwner2() {
        //required(); condtions with argu {extrnal} use
        require(msg.sender == Owner, "NOT OWNER"); // high gass
        _;
    }

    modifier isOwner3() {
        // revert(); for revert transation
        if (msg.sender != Owner) {
            revert("Not Owner"); // less gass
        }
        _;
    }

    function CheckRithAssert() public isOwner {
        number++;
    }

    function CheckWithRequired() public isOwner2 {
        number++;
    }

    function CheckWithRevert() public isOwner3 {
        number++;
    }
}
