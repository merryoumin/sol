// scripts 폴더의 deploy.js 파일 수정

const hre = require("hardhat");

async function main() {
  const ABC = await hre.ethers.getContractFactory("ABC");
  const lock = await ABC.deploy();
  console.log("LOCK deployed to : ", lock);
  console.log("LOCK deployed to : ", lock.target);
}

main().catch((error) => {
  console.error(error);
  process.exitCode = 1;
});
