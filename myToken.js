// Import the Web3 library
const Web3 = require('web3');

// Initialize a Web3 instance using the injected provider
const web3 = new Web3(window.ethereum);

// The address of the deployed MyToken contract
const contractAddress = '0x...'; // replace with your contract address

// The ABI of the MyToken contract
const contractABI = [...]; // replace with your contract ABI

// Initialize a contract instance
const myToken = new web3.eth.Contract(contractABI, contractAddress);

// Get accounts from the provider
const accounts = await web3.eth.getAccounts();

// Check token balance
const balance = await myToken.methods.balanceOf(accounts[0]).call();
console.log(`Balance: ${balance}`);

// Transfer tokens to another address
const recipient = '0x...'; // replace with the recipient's address
const amount = web3.utils.toWei('10', 'ether'); // replace with the amount to transfer
await myToken.methods.transfer(recipient, amount).send({ from: accounts[0] });

// Approve tokens for transfer by another address
const spender = '0x...'; // replace with the spender's address
const allowance = web3.utils.toWei('5', 'ether'); // replace with the allowance amount
await myToken.methods.approve(spender, allowance).send({ from: accounts[0] });

// Transfer tokens on behalf of another address
const sender = '0x...'; // replace with the sender's address
const recipient = '0x...'; // replace with the recipient's address
const amount = web3.utils.toWei('5', 'ether'); // replace with the amount to transfer
await myToken.methods.transferFrom(sender, recipient, amount).send({ from: accounts[0] });
