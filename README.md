# ABI_Task_1: Smart Contract Development
## This contract does the following:

**Explanation of Design Choices**

- It inherits from the **ERC20** contract provided by the OpenZeppelin library, which is a standard library for secure smart contract development in Solidity.
- The constructor function sets the token name to “MyToken” and the token symbol to “MT”. It also mints 1,000,000 tokens and assigns them to the contract deployer.
- The **transfer**, **approve**, and **transferFrom** functions are standard ERC-20 functions for transferring tokens. They are overridden here to ensure that they return a boolean value, which is a common practice to indicate the success of the function call.
- **super** is used to call the **transfer**, **approve**, and **transferFrom** functions as they are implemented in the ERC20 contract from the OpenZeppelin library. This is done because these functions are overridden in the MyToken contract.

So, when you see something like **super.transfer(recipient, amount);**, it means “call the transfer function as defined in the parent contract (ERC20)”. This allows the MyToken contract to use the functionality of the ERC20 contract while also adding its own logic.

This is a common pattern in object-oriented programming languages, and Solidity supports it as well. It’s a powerful way to build upon existing code and customize it for your specific needs.
