
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC721/extensions/ERC721URIStorage.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract SultanBurnTheSky is ERC721URIStorage, Ownable {
    constructor() ERC721("Sultan Abed – Burn The Sky", "EGL-BTS") {}

    function mintNFT(address recipient, string memory tokenURI) public onlyOwner returns (uint256) {
        uint256 newItemId = totalSupply() + 1;
        _mint(recipient, newItemId);
        _setTokenURI(newItemId, tokenURI);
        return newItemId;
    }
}
