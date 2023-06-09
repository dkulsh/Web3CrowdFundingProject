// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

import "@openzeppelin/contracts/token/ERC1155/ERC1155.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

/// @title A custom NFT contract
/// @author Deep Kulshreshtha
/// @notice Developed as part of web3 training. Batch 4 Team 1
/// @notice You can use this contract for basic simulation
/// @dev Contract does not have a maxSupply limit
/// @custom:experimental This is an experimental contract.
contract Batch4Team1Receipt is ERC1155, Ownable {
    constructor() ERC1155("") {}

    function setURI(string memory newuri) public onlyOwner {
        _setURI(newuri);
    }

    function mint(
        address account,
        uint256 id,
        uint256 amount,
        bytes memory data
    ) public {
        _mint(account, id, amount, data);
    }
}
