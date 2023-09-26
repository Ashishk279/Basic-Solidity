// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

contract Mapping {
    mapping(address => uint) public balances;

    function update(uint _amount) public {
        balances[msg.sender] = _amount;
    }
}

contract MapUser {
    function f() public returns(uint) {
        Mapping map = new Mapping();
        map.update(100);
        return map.balances(address(this));
    }
}