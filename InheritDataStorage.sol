// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

import {DataStorage} from "./DataStorage.sol";

contract InheritDataStorage is DataStorage {
    // Improrting parent contract
    // is - keyword
    // override - keyword for the chiled contract
    // virtual - keyword for parent contrct

    function storeNumber(uint _byNumber) public override {
        myNumber = _byNumber + 10;
    }

}