# 🧸 Spacebear NFT

**Spacebear** is a simple ERC-721 (NFT) smart contract built with [Foundry](https://book.getfoundry.sh/), using [OpenZeppelin Contracts v5](https://github.com/OpenZeppelin/openzeppelin-contracts). It includes deployment and test scripts, and a minting function with token URI support.

---

## 🚀 Features

- ✅ Built with Solidity `^0.8.21`
- ✅ ERC-721 compliant using OpenZeppelin Contracts v5
- ✅ Token metadata stored via `ERC721URIStorage`
- ✅ `Ownable` access control
- ✅ Custom `safeMint()` function
- ✅ Unit test with Foundry
- ✅ Deployment via script using private key from `.secret`

---

## 📁 Project Structure

```text
.
├── lib/
│   └── openzeppelin-contracts/      # Installed via forge install
├── script/
│   └── deploy.sol                   # Deployment script
├── src/
│   └── Spacebear.sol                # Core ERC721 NFT contract
├── test/
│   └── Spacebear.t.sol              # Foundry tests
├── .secret                          # Your seed phrase (not committed)
└── foundry.toml                     # Foundry config
```

## 🛠️ Installation

1. **Install Foundry (if not already installed)**  
   Follow the instructions here: [Foundry Installation Guide](https://book.getfoundry.sh/getting-started/installation)

2. **Clone the repository and install dependencies**
   ```bash
   git clone <your-repo-url>
   cd spacebear
   forge install openzeppelin/openzeppelin-contracts
   ```

## 🧪 Running Tests

To run unit tests:
    ```bash 
    forge test
    ```

## 📜 Deploying to a Network

Update your `.secret` file with your wallet's mnemonic phrase. Then run:

```bash
forge script script/Deploy.sol:SpacebearScript --rpc-url <YOUR_RPC_URL> --broadcast --verify
```
Replace `<YOUR_RPC_URL>` with your network provider (e.g., Alchemy, Infura).

## 🧬 Contract Summary

```solidity
constructor(address initialOwner)
```

- Initializes the ERC721 with name "Spacebear" and symbol "SBR"

- Sets `initialOwner` as the owner using OpenZeppelin's `Ownable`

## 🪄 Minting

```solidity
function safeMint(address to, string memory uri) public onlyOwner
``` 
- Only the contract owner can mint
- Mints a token to `to` and assigns the metadata `uri`
