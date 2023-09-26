// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

interface ICounter {
    function increement() external;
    function decreement() external;
}

contract MyCounter{
    uint private data;

    function increement() public {
        data += 1;
    }

    function decreement() public {
        data -= 1;
    }

    function getData() public view returns(uint){
        return data;
    }
} 