# NFT Marketplace Smart Contract

## Overview
This smart contract provides a basic NFT (Non-Fungible Token) marketplace on Ethereum. It enables users to create, buy, and manage NFTs. Built with Solidity 0.5.1, this contract allows token creation with unique URIs, listing tokens for sale, and transferring ownership between users.

## Features
- **Create NFTs**: Users can mint new NFTs with a specified URI and price.
- **Update Prices**: Owners can update the sale price of their NFTs.
- **Buy NFTs**: Users can purchase NFTs by sending ETH to the contract.

## Smart Contract Functions

### `createNFT(string memory tokenURI, uint price)`
Creates a new NFT with the specified `tokenURI` and `price`. Only the contract owner can call this function.

- **Parameters**:
  - `tokenURI`: A string representing the URI for the NFT metadata.
  - `price`: The sale price of the NFT in wei.
- **Returns**: The token ID of the newly created NFT.

---

### `updatePrice(uint tokenId, uint newPrice)`
Updates the sale price of an existing NFT. Only the current owner of the NFT can update its price.

- **Parameters**:
  - `tokenId`: The ID of the NFT to update.
  - `newPrice`: The new price of the NFT in wei.

---
### `buyNFT(uint tokenId)`
Allows a user to purchase an NFT. Transfers ownership of the NFT to the buyer and sends the sale amount to the seller.

- **Parameters**:
  - `tokenId`: The ID of the NFT to purchase.

---
### `getTokenDetails(uint tokenId)`
Fetches details of a specific NFT.

- **Parameters**:
  - `tokenId`: The ID of the NFT to query.
- **Returns**:
  - `address`: The owner of the NFT.
  - `uint`: The price of the NFT in wei.
  - `string memory`: The URI associated with the NFT.