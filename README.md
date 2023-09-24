README for NextBlock vr. 1

**Introduction**

Welcome to our Web3 Real Estate Rental and Listing Platform, NextBlock: designed to revolutionize the way landlords and tenants interact in the real estate market. 
Our platform harnesses the power of blockchain and smart contracts to provide a secure, transparent, and efficient ecosystem for property rental and management.

**Motivation**

In a city where traditional real estate rental processes often feel cumbersome and opaque, we're dedicated to transforming 
this experience into one that's seamless, secure, and accessible for all.
Our motivation comes from understanding the pain points faced by landlords and tenants alike. 
We aim to build a vibrant community that values transparency, accountability, and fairness, fostering trust through features like ratings and reviews. 
Our commitment to innovation and improvement is aimed at reshaping the industry to be more inclusive, efficient, and secure.

**Functionality**
There are two roles of the users, namely landlord (leaser), and tenant (renter). Users need to connect to their wallet before using the web app.

A property can be created by the landlord, with associated metadata stored on the peer-to-peer decentralized file system ([IPFS](https://web3.storage/)).

The tenant is able to use graph technology (to be implemented) to search his desired apartment.

An rental application can be initiated by the tenant and approved/rejected by the landlord. Once the application is approved, the tenant is able to proceed with the deposit and move-in procedure. The monthly rental payment is also conducted using the smart contract so that the payment timestamp can be recorded.

The payment history will be used to evaluate the tenant's "credit rating". Late payment will result in panalty on the tenant's credit rating.

The tenant's credit rating can also be established by uploading documents to support their ability to pay for the rental in the future.

The credit rating will be used as a trustable reference for tenants so that third-party guarantor may be avoided if the tenant has a high rating (algorithm to be implemented).

**UI Design**
https://www.figma.com/file/7htmJgqtU4mtcqEvunWUfF/Untitled?type=design&node-id=0%3A1&mode=design&t=Ta2b3SPpkMpSfLua-1

**Design**
  Figma
  
**Front end:**
  React JS

**Back End:**
  Node.js
  
**Smart Contract**
  Solidity
  
**Framework used**
  Hardhat (for deployment), IPFS (for storage)

**Technology used**
  Decentralized file storage, Graph API (to be implemented)
