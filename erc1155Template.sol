// TheGreatNFTTreasureHunt.sol
// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts v4.3.2 (token/ERC1155/IERC1155Receiver.sol)

pragma solidity ^0.8.0;

import "./ERC1155.sol";
import "./SafeMath.sol";
import "./ERC2981.sol";


contract TheGreatNFTTreasureHunt is ERC2981, ERC1155 {
    using SafeMath for uint256;
    constructor() ERC1155("ipfs.moralis.io:2053/ipfs/QmdKBgA5CKthqQYGeJyu7QX6qHpK94NUbth92V1Gz1CaoP/images/TheGreatNFTTreasureHuntOpenSeaMetada.json") {
        for (uint i = 0; i < 2; i++) {
                _mint(msg.sender, i, 2, "");
        }
    }
    function banner_image_url() public view virtual returns (string memory) {
        return "https://lh3.googleusercontent.com/4yZjukNtimYxkmXOf1cdgDo28xjVtWr1ZB7EwVDlKoFsyAZomDWahhe9UYOxWIbPRQlFdZH9phLKaer-fyA1TSSCWkq9EF-4XtHjUg=s2500";
    }
    // storefront metadata requireed by OpenSeaTheGreatNFTTreasureHuntMetadata
    function contractURI() public view virtual returns (string memory) {
        return "https://ipfs.moralis.io:2053/ipfs/QmRFNZfyRwkUm15nTY7uBSBjyKotMd2mXZosGamhM2Sieo/metadata/OpenSeaTheGreatNFTTreasureHuntMetadata.json"; // try with json extention first 
    }
        /**
     * @dev Returns the name of the token.
     */
    function name() public view virtual returns (string memory) {
        return "The Great NFT Treasure Hunt Collection";
    }
    // external_link
    function external_link() public view virtual returns(string memory){
        return "http://TheGreatNFTTreasureHunt.com";
    }
    // description
        function description() public view virtual returns(string memory){
        return "The Badge Of A True Adventurer";
    }    
}