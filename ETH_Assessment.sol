// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;

contract MyToken {

    // Public variables to store details about the coin
    string public name = "TestToken";
    string public symbol = "TK1";
    uint256 public total_supply = 0;

    // Mapping to store balances of addresses
    mapping(address => uint256) public balances;

    // Mint function to increase total supply and balance of the specified address
    function mint(address account, uint256 amount) public {
        total_supply += amount;
        balances[account] += amount;
    }

    // Burn function to decrease total supply and balance of the specified address
    function burn(address account, uint256 amount) public {
        require(balances[account] >= amount, "Insufficient balance to burn");
        total_supply -= amount;
        balances[account] -= amount;
    } 
}
