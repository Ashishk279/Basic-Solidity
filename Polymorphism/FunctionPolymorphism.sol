// SPDX-License-Identifier: MIT
pragma solidity >=0.8.13 <=0.8.21;

contract FunctionPolymorphism {
    function getVariableData(uint8 data) public pure returns(uint8 output) {
        return data;
    }

    function getVariableData(uint16 data) public pure returns(uint16 output) {
        return data;
    }
}