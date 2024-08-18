
# NFT Marketplace Smart Contract

## Overview

This smart contract provides a basic NFT (Non-Fungible Token) marketplace on Ethereum. It allows users to create, buy, and manage NFTs. Built with Solidity 0.5.1, this contract enables token creation with unique URIs, listing tokens for sale, and transferring ownership between users.

## Features

- **Create NFTs**: Users can mint new NFTs with a specified URI and price.
- **Update Prices**: Owners can update the sale price of their NFTs.
- **Buy NFTs**: Users can purchase NFTs by sending ETH to the contract.
- **View Token Details**: Users can view details about any NFT, including the owner, price, and URI.

## Smart Contract Functions

### `createNFT(string memory tokenURI, uint price)`

Creates a new NFT with the specified `tokenURI` and `price`. Only the contract owner can call this function.

- **Parameters**:
  - `tokenURI`: A string representing the URI for the NFT metadata.
  - `price`: The sale price of the NFT in wei.
- **Returns**: The token ID of the newly created NFT.

### `updatePrice(uint tokenId, uint newPrice)`

Updates the sale price of an existing NFT. Only the current owner of the NFT can update its price.

- **Parameters**:
  - `tokenId`: The ID of the NFT to update.
  - `newPrice`: The new price of the NFT in wei.

### `buyNFT(uint tokenId)`

Allows a user to purchase an NFT. Transfers ownership of the NFT to the buyer and sends the sale amount to the seller.

- **Parameters**:
  - `tokenId`: The ID of the NFT to purchase.

### `getTokenDetails(uint tokenId)`

Fetches details of a specific NFT.

- **Parameters**:
  - `tokenId`: The ID of the NFT to query.
- **Returns**:
  - `address`: The owner of the NFT.
  - `uint`: The price of the NFT in wei.
  - `string memory`: The URI associated with the NFT.

## Installation

1. **Clone the Repository**

   ```bash
   git clone https://github.com/yourusername/nft-marketplace.git
   ```

2. **Navigate to the Contract Directory**

   ```bash
   cd nft-marketplace
   ```

3. **Compile the Contract**

   Use Remix IDE or any other Solidity compiler to compile the `NFTMarketplace.sol` file.

4. **Deploy the Contract**

   Deploy the contract on an Ethereum testnet or mainnet using Remix or other deployment tools.

## Usage

1. **Deploy the Contract**: Follow the instructions for deploying the smart contract.
2. **Create NFTs**: Call the `createNFT` function to mint new NFTs.
3. **Update Prices**: Use the `updatePrice` function to set the price of your NFTs.
4. **Buy NFTs**: Call the `buyNFT` function to purchase NFTs.
5. **View Details**: Use `getTokenDetails` to view information about an NFT.

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

To use this on GitHub:

1. Navigate to your repository.
2. Click on "Add file" and select "Create new file".
3. Name the file `README.md`.
4. Copy and paste the Markdown content into the file.
5. Commit the changes.

Feel free to adjust any sections or add more details as needed!
