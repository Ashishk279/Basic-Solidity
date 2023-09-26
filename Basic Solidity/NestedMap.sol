// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

contract NestedMappibng{
    mapping(address => mapping(uint => bool)) public NestedMap;

    function set(address _addr, uint _i, bool _bool) public  {
        NestedMap[_addr][_i] = _bool;
    }

    function get(address _addr, uint _i) public view returns(bool) {
        return NestedMap[_addr][_i];
    }

    function remove(address _addr, uint _i) public {
        delete NestedMap[_addr][_i];
    }
}