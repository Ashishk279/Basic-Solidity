// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

contract Mapping {
    mapping (address => uint) public MyMap;

    function set(address addr, uint i) public {
        MyMap[addr] = i;        
    }

    function get(address addr) public view returns(uint){
        return MyMap[addr];
    }

    function remove(address addr) public  {
        delete MyMap[addr];
    }
}