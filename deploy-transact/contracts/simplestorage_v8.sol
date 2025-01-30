// SPDX-License-Identifier: MIT
pragma solidity ^0.8.16;

contract SimpleStorage {
    uint public storedData;

    event DataStored(uint data);

    constructor(uint initVal) {
        storedData = initVal;
    }

    function set(uint x) public returns (uint) {
        require(x < 100, "Value cannot be over 100");
        storedData = x;
        emit DataStored(x);
        return storedData;
    }

    function get() public view returns (uint) {
        return storedData;
    }

    function query() public view returns (uint) {
        return storedData;
    }
}
