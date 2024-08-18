pragma solidity 0.5.1;

contract NFTMarketplace {
    address public owner;
    uint public nextTokenId;

    mapping(uint => address) public tokenOwners;
    mapping(uint => uint) public tokenPrices;
    mapping(uint => string) public tokenURIs;

    event NFTCreated(uint tokenId, address owner, uint price, string tokenURI);
    event NFTPriceUpdated(uint tokenId, uint price);
    event NFTSold(uint tokenId, address newOwner, uint price);

    constructor() public {
        owner = msg.sender;
        nextTokenId = 1; // Start token IDs from 1
    }

    function createNFT(string memory tokenURI, uint price) public returns (uint) {
        require(price > 0, "Price must be greater than zero");

        uint tokenId = nextTokenId;
        nextTokenId++;

        tokenOwners[tokenId] = msg.sender;
        tokenPrices[tokenId] = price;
        tokenURIs[tokenId] = tokenURI;

        emit NFTCreated(tokenId, msg.sender, price, tokenURI);
        return tokenId;
    }

    function updatePrice(uint tokenId, uint newPrice) public {
        require(tokenOwners[tokenId] == msg.sender, "You are not the owner");
        require(newPrice > 0, "Price must be greater than zero");

        tokenPrices[tokenId] = newPrice;

        emit NFTPriceUpdated(tokenId, newPrice);
    }

    function buyNFT(uint tokenId) public payable {
        address seller = tokenOwners[tokenId];
        uint price = tokenPrices[tokenId];

        require(seller != address(0), "NFT does not exist");
        require(msg.value >= price, "Insufficient funds to purchase");
        require(seller != msg.sender, "Cannot buy your own NFT");

        // Transfer ownership
        tokenOwners[tokenId] = msg.sender;
        tokenPrices[tokenId] = 0; // Mark as sold

        // Transfer funds to the seller
        address(uint160(seller)).transfer(price);

        emit NFTSold(tokenId, msg.sender, price);
    }

    function getTokenDetails(uint tokenId) public view returns (address, uint, string memory) {
        return (tokenOwners[tokenId], tokenPrices[tokenId], tokenURIs[tokenId]);
    }
}
