// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract Token is ERC20 {
    uint256 constant initialSupply = 300000000 * (10 ** 18);

    constructor() ERC20("Star", "FSTR") {
        _mint(msg.sender, initialSupply);
    }
}
