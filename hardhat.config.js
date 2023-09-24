require("@nomicfoundation/hardhat-toolbox");
require("dotenv").config();

/** @type import('hardhat/config').HardhatUserConfig */
module.exports = {
  solidity: {
    version: "0.8.17",
    // settings: {
    //   optimizer: {
    //     enabled: false,
    //     runs: 200,
    //     viaIR: true,
    //     details: {
    //       yul: true,
    //     },
    //   },
    // },
  },
  solidity: "0.8.17",
  defaultNetwork: "sepolia",
  networks: {
    hardhat: {},
    sepolia: {
      url: process.env.INFURA_API_KEY,
      accounts: [process.env.PRIVATE_KEY],
      chainId: 11155111,
    }
  }

};
