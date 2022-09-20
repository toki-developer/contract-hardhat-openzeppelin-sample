const { ethers, upgrades } = require('hardhat');

async function main () {
  const Box = await ethers.getContractFactory('Box');
  console.log('Upgrade Box...');
  const box = await upgrades.upgradeProxy("0x0B306BF915C4d645ff596e518fAf3F9669b97016",Box);
  await box.deployed();
  console.log('Box deployed to:', box.address);
}

main();