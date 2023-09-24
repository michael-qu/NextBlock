//const { ethers } = require("hardhat");
async function main() {
    const ResidentialLease = await ethers.getContractFactory("ResidentialLease");
    const residentialLease = await ResidentialLease.deploy();
    console.log("Contract deployed to address: ", residentialLease);
}

main()
    .then(() => process.exit(0))
    .catch((err) => {
        console.error(err);
        process.exit(1);
    });