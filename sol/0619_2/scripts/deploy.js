// scripts 폴더의 deploy.js 파일 수정

const hre = require("hardhat");

async function main() {
  const LOCK = await hre.ethers.getContractFactory("Lock");
  const lock = await LOCK.deploy();
  console.log("LOCK deployed to : ", lock);
  console.log("LOCK deployed to : ", lock.target);
}

main().catch((error) => {
  console.error(error);
  process.exitCode = 1;
});
