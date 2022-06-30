// SPDX-License-Identifier: MIT 

pragma solidity ^0.8.0;

import "./SimpleStorage.sol";

// inheritane
contract ExtraStorage is SimpleStorage{
    // mengakses method SImpleStorage
    // override
    // virtual override
    function store(uint256 _favoriteNumber) public override{
        favoriteNumber = _favoriteNumber + 5;
    }

}