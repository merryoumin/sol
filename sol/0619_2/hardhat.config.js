// hardhat.config.js 아래와 같이 수정

require("@nomicfoundation/hardhat-toolbox");

const PVK =
  "0x4104a17d8318ef8e9258ea64890570ac523398904a1060866f532dfa75ad22e5";

module.exports = {
  solidity: "0.8.17",
  etherscan: {
    apiKey: "W9H3XWIC9XJQHP8UBAYCBNG72F182YHGSQ",
  },
  networks: {
    goerli: {
      url: `https://goerli.infura.io/v3/8f21e62e72c346b9a9923f05f0ae3ab2`,
      accounts: [PVK],
    },
  },
};
