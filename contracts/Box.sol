//SPDX-License-Identifier: UNLICENSED

pragma solidity ^0.8.9;

import "@openzeppelin/contracts/access/Ownable.sol";

contract Box {
    uint256 private _value;

    event ValueChanged(uint256 value);

    function store(uint256 value) public {

        _value = value;
        emit ValueChanged(value);
    }

    function retrive() public view returns(uint256){
        return _value;
    }
}