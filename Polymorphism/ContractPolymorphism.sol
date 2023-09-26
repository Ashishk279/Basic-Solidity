// SPDX-License-Identifier: MIT
pragma solidity >=0.8.13 <=0.8.21;

contract ParentContract {
    uint internal simpleVariable;

    function setVariable(uint _simplevariable) public {
        simpleVariable = _simplevariable;
    }
    function getVariable() public view virtual returns(uint){
        return 10;
    }
}

contract childContract is ParentContract {
    function getVariable() public view override returns(uint){
        return (simpleVariable);
    }
}