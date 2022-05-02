// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v4.6.0) (token/ERC20/ERC20.sol)

pragma solidity ^0.8.0;

import "./ERC20.sol";
// import "./IERC20.sol";
// import "./SafeMath.sol";
// import "./extensions/IERC20Metadata.sol";
// import "./Context.sol";

// 2500000000000000000000000000 = 25*10**9 * 10**18
contract USAToken is ERC20 {
    constructor(
        uint256 initialSupply
    ) ERC20("USA Coin", "USAC"){
        _mint(msg.sender, initialSupply);
    }
    /**
    * @dev Returns the name of the token.
    */
    function  name() public view virtual override returns (string memory) {
        return "USAToken Name";
    }
    // external_link
    function external_link() public view virtual returns(string memory){
        return "https://magicsea.io";
    }
    // description
        function description() public view virtual returns(string memory){
        return "USA Token description";
    } 
}