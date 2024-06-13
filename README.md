# ETH_PROOF
Module 3 Project : Create a Token

# MyToken Smart Contract

## Overview

`MyToken` is a simple Ethereum-based token smart contract with minting and burning functionalities.

## Prerequisites

- Solidity ^0.8.18
- Ethereum development environment (Hardhat, Truffle, Remix)

## Contract Details

### Variables

- `name`: "MyToken"
- `symbol`: "MTK"
- `total_supply`: 0
- `balances`: Mapping of address to balance

### Functions

#### `mint(address account, uint256 amount)`

Increases `total_supply` and the balance of `account`.

- **Parameters**:
  - `account`: Address to mint tokens to
  - `amount`: Number of tokens to mint

#### `burn(address account, uint256 amount)`

Decreases `total_supply` and the balance of `account`. Requires sufficient balance.

- **Parameters**:
  - `account`: Address to burn tokens from
  - `amount`: Number of tokens to burn

## Usage

### Minting Tokens

```solidity
mint(0xYourAddressHere, 100);
