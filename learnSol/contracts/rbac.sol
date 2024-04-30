// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "@openzeppelin/contracts/access/AccessControl.sol";

contract RoleBasedAccess is AccessControl {
    constructor() {
        _grantRole(DEFAULT_ADMIN_ROLE, msg.sender);
    }

    bytes32 public constant USER_ROLE = keccak256("USER_ROLE");
    bytes32 public constant ADMIN_ROLE = keccak256("ADMIN_ROLE");

    function submitScreenShot() public view returns (string memory) {
        require(hasRole(USER_ROLE, msg.sender), "You are not a User");
        return "ScreenShot Submited";
    }

    function viewScreenShot() public view returns (string memory) {
        require(hasRole(ADMIN_ROLE, msg.sender), "You are not a Admin");
        return "ScreenShot Viewed";
    }
}
