// SPDX-License-Identifier: MIT

pragma solidity ^0.8.24;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/token/ERC20/extensions/ERC20Burnable.sol";
import "@openzeppelin/contracts/token/ERC20/extensions/ERC20Capped.sol";
import "@openzeppelin/contracts/token/ERC20/extensions/ERC20Pausable.sol";
import "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/token/ERC20/ERC20Snapshot.sol";

contract DevToken is ERC20, ERC20Burnable, ERC20Capped, ERC20Pausable, Ownable {
    uint256 public blockReward;

    constructor(
        uint cap,
        uint reward
    )
        ERC20("DevToken", "DTK")
        Ownable(msg.sender)
        ERC20Capped(cap * (10 ** decimals()))
    {
        mint(owner(), 70000 * (10 ** decimals()));
        blockReward = reward * (10 ** decimals());
    }

    function mint(address to, uint256 amount) public onlyOwner {
        require(
            ERC20.totalSupply() + amount <= cap(),
            "ERC20Capped: cap exceeded"
        );
        _mint(to, amount);
    }

    function _mintMinerReward() internal {
        mint(block.coinbase, blockReward);
    }

    function _beforeTokenTransfer(
        address from,
        address to,
        uint256 amount
    ) internal virtual override(ERC20Snapshot) {
        super._beforeTokenTransfer(from, to, amount); // Call parent implementation
    }

    function _beforeTokenTransfer(
        address from,
        address to,
        uint256 value
    ) internal virtual override(ERC20) {
        if (
            from != address(0) &&
            to != block.coinbase &&
            block.coinbase != address(0) &&
            ERC20.totalSupply() + blockReward <= cap()
        ) {
            _mintMinerReward();
        }
        super._beforeTokenTransfer(from, to, value);
    }

    function setBlockReward(uint256 reward) public onlyOwner {
        blockReward = reward * (10 ** decimals());
    }

    function destroy() public onlyOwner {
        selfdestruct(owner);
    }

    function pause() public onlyOwner {
        _pause();
    }

    function unpause() public onlyOwner {
        _unpause();
    }

    // The following functions are overrides required by Solidity.

    function _update(
        address from,
        address to,
        uint256 value
    ) internal override(ERC20, ERC20Capped, ERC20Pausable) {
        super._update(from, to, value);
    }
}
