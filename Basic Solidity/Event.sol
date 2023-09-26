// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

contract Event {
    mapping(address => uint) public balanceOf;
    event Transfer(address indexed from, address indexed to, uint256 value);
    event Deposit(address indexed from, string indexed id, uint value);

    function deposit(string memory _id) external  payable {
        balanceOf[msg.sender] = msg.value;
        emit Deposit(msg.sender, _id, msg.value);
    }

    function transfer(address to, uint256 value) public {
        require(to != address(0));
        require(value > 0);
        
        emit Transfer(msg.sender, to, value);
        balanceOf[msg.sender] -= value;
        balanceOf[to] += value;

    }
}