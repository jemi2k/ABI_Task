# ABI_Task_1: Smart Contract Development
## This contract does the following:

**Explanation of Design Choices**

- **// SPDX-License-Identifier: MIT:** This is a comment that specifies the license of the contract. SPDX stands for Software Package Data Exchange, which is a standard for expressing software licenses. In this case, MIT indicates that the contract is licensed under the MIT License, a permissive free software license.
- **pragma solidity ^0.8.20;:** This line is used to specify the compiler version that should be used to compile the contract. The caret (^) symbol means “compatible with version 0.8.20 or later”. This is important because different Solidity versions might have different features or syntax, and a contract might not work as expected if compiled with an incompatible version. In this case, the contract should be compiled with Solidity version 0.8.20 or any newer version that doesn’t introduce breaking changes.
- It inherits from the **ERC20** contract provided by the OpenZeppelin library, which is a standard library for secure smart contract development in Solidity.
- The constructor function sets the token name to “MyToken” and the token symbol to “MT”. It also mints 1,000,000 tokens and assigns them to the contract deployer.
- The **transfer**, **approve**, and **transferFrom** functions are standard ERC-20 functions for transferring tokens. They are overridden here to ensure that they return a boolean value, which is a common practice to indicate the success of the function call.
- **super** is used to call the **transfer**, **approve**, and **transferFrom** functions as they are implemented in the ERC20 contract from the OpenZeppelin library. This is done because these functions are overridden in the MyToken contract.

So, when you see something like **super.transfer(recipient, amount);**, it means “call the transfer function as defined in the parent contract (ERC20)”. This allows the MyToken contract to use the functionality of the ERC20 contract while also adding its own logic.

This is a common pattern in object-oriented programming languages, and Solidity supports it as well. It’s a powerful way to build upon existing code and customize it for your specific needs.
