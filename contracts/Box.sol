//SPDX-License-Identifier: UNLICENSED

pragma solidity ^0.8.9;

import "@openzeppelin/contracts-upgradeable/access/OwnableUpgradeable.sol";
import "@openzeppelin/contracts-upgradeable/proxy/utils/Initializable.sol";

import "hardhat/console.sol";

contract Box is OwnableUpgradeable {
    uint256 private _value;
    uint256 public testval;

    event ValueChanged(uint256 value);

    function initialize(uint256 value) public initializer {
        _value = value;
        testval = 52;
        // ownableを初期化できる (これがないとownerが0x00000...になった)
        __Ownable_init_unchained();
    }

    function store(uint256 value) public onlyOwner {
        _value = value;
        emit ValueChanged(value);
    }

    function retrive() public view returns(uint256){
        console.log("--==--");
        console.log("success upgrade -==-===");
        console.log(msg.sender);
        console.log(owner());
        console.log("--==--");
        return _value;
    }

    function upgradeSuccess() public pure returns(string memory) {
        return "successsss";
    }
}