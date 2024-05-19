// SPDX-License-Identifier: MIT
// This is a comment that specifies the license of the contract. 
// SPDX stands for Software Package Data Exchange, which is a standard for expressing software licenses. 
// In this case, MIT indicates that the contract is licensed under the MIT License.

pragma solidity ^0.8.0;
// This line is used to specify the compiler version that should be used to compile the contract. 
// The caret (^) symbol means "compatible with version 0.8.0 or later".

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
// This line imports the ERC20 contract from the OpenZeppelin library, 
// which is a standard library for secure smart contract development in Solidity.

contract MyToken is ERC20 {
    // This line declares a new contract named MyToken that inherits from the ERC20 contract.

    constructor() ERC20("MyToken", "MT") {
        // The constructor function is called once when the contract is deployed. 
        // It sets the token name to "MyToken" and the token symbol to "MT".

        _mint(msg.sender, 1000000 * 10 ** decimals());
        // This line mints 1,000,000 tokens and assigns them to the contract deployer.
    }

    function transfer(address recipient, uint256 amount) public override returns (bool) {
        // This function is used to transfer tokens from the function caller to another account.

        super.transfer(recipient, amount);
        // This line calls the transfer function as defined in the parent contract (ERC20).

        return true;
        // The function returns true to indicate that the transfer was successful.
    }

    function approve(address spender, uint256 amount) public override returns (bool) {
        // This function is used to set an allowance, 
        // i.e., to authorize another account to transfer a certain amount of tokens on behalf of the function caller.

        super.approve(spender, amount);
        // This line calls the approve function as defined in the parent contract (ERC20).

        return true;
        // The function returns true to indicate that the approval was successful.
    }

    function transferFrom(address sender, address recipient, uint256 amount) public override returns (bool) {
        // This function is used to transfer tokens from one account to another. 
        // It differs from the transfer function in that it allows a third party (the function caller) 
        // to transfer tokens on behalf of another account, provided that they have an allowance.

        super.transferFrom(sender, recipient, amount);
        // This line calls the transferFrom function as defined in the parent contract (ERC20).

        return true;
        // The function returns true to indicate that the transfer was successful.
    }
}
