require("@nomicfoundation/hardhat-toolbox");

/** @type import('hardhat/config').HardhatUserConfig */
// const INFURA_API_KEY = vars.get("INFURA_API_KEY");
// const SEPOLIA_PRIVATE_KEY = vars.get("SEPOLIA_PRIVATE_KEY");
// const ETHERSCAN_API_KEY = vars.get("ETHERSCAN_API_KEY");

const INFURA_API_KEY = "v1kL1aHdE7BG7TZQq8mdYnrpmtqbsXBF";
const SEPOLIA_PRIVATE_KEY = "eedf5880b9c56f80c4f82a8d676e44378a35abeab8415a707ef6486f79f3c309";
const ETHERSCAN_API_KEY = "a7a8ac69-e835-4cdd-acdc-3d4df0227fdf";
module.exports = {
  solidity: "0.8.20",
  networks: {
    sepolia: {
      url: `https://polygon-amoy.g.alchemy.com/v2/${INFURA_API_KEY}`,
      accounts: [SEPOLIA_PRIVATE_KEY],
    },
  },
  etherscan: {
    apiKey: {
      amoy: ETHERSCAN_API_KEY,
    },
  },
};
