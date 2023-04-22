// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "./SimpleStorage.sol";

// inheritingSimpleStorage
contract ExtraStorage is SimpleStorage { 

    // overridingFunctions
    function store(uint256 _favouriteNumber) public override { 
        favoriteNumber = _favouriteNumber + 5;
    }

}