//SPDX-License-Identifier: UNLICENSED

pragma solidity ^0.8.9;

import "@openzeppelin/contracts-upgradeable/access/OwnableUpgradeable.sol";
contract Box is OwnableUpgradeable {
    uint256 private _value;

    event ValueChanged(uint256 value);

    function store(uint256 value) public {

        _value = value;
        emit ValueChanged(value);
    }

    function retrive() public onlyOwner view returns(uint256){
        return _value;
    }
}