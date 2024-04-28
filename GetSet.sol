// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract GetSet {

    uint private storedData;

    function set(uint x) public {
        storedData = x;
    }

    function get() public returns (uint) {
        // Increment the stored data each time get is called
        storedData++;
        return storedData;
    }
}

/*
contract GetSet {

    uint private storedData;

    function set(uint x) public {
        storedData = x;
    }

    function get() public view returns (uint) {
        return storedData;
    }
}
/*