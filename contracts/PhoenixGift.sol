// SPDX-License-Identifier: MIT

pragma solidity ^0.8.4;

import '@openzeppelin/contracts/access/Ownable.sol';
import './ERC721A4973.sol';

contract PhoenixGift is ERC721A4973, Ownable {
    string public baseURI = '';

    constructor() ERC721A4973('Phoenix Gift', 'PG') {}

    function awardItem(address player, uint256 amount) external onlyOwner {
        _mint(player, amount);
    }

    function _baseURI() internal view virtual override returns (string memory) {
        return baseURI;
    }

    function setBaseURI(string memory _uri) external onlyOwner {
        baseURI = _uri;
    }
}
