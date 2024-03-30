require("@nomicfoundation/hardhat-toolbox");

/** @type import('hardhat/config').HardhatUserConfig */
const pvkey =
  "0x4104a17d8318ef8e9258ea64890570ac523398904a1060866f532dfa75ad22e5";

module.exports = {
  solidity: "0.8.18",
  networks: {
    goerli: {
      url: `https://goerli.infura.io/v3/8f21e62e72c346b9a9923f05f0ae3ab2`,
      accounts: [pvkey],
    },
  },
};
