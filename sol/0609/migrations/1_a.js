// 장소 : migrations 폴더 안 1_add.js
const A = artifacts.require("AAA");

module.exports = function (deployer) {
  deployer.deploy(A);
};
