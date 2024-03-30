var {Web3} = require('web3')
var web3 = new Web3('https://goerli.infura.io/v3/8f21e62e72c346b9a9923f05f0ae3ab2')

var privateKey = '0x4104a17d8318ef8e9258ea64890570ac523398904a1060866f532dfa75ad22e5'
var account = web3.eth.accounts.privateKeyToAccount(privateKey)

web3.eth.accounts.wallet.add(account)
web3.eth.defaultAccount = account.address

var abi =  [
	{
		"inputs": [
			{
				"internalType": "uint256",
				"name": "_a",
				"type": "uint256"
			}
		],
		"name": "setA",
		"outputs": [],
		"stateMutability": "nonpayable",
		"type": "function"
	},
	{
		"inputs": [],
		"name": "a",
		"outputs": [
			{
				"internalType": "uint256",
				"name": "",
				"type": "uint256"
			}
		],
		"stateMutability": "view",
		"type": "function"
	},
	{
		"inputs": [
			{
				"internalType": "uint256",
				"name": "_a",
				"type": "uint256"
			},
			{
				"internalType": "uint256",
				"name": "_b",
				"type": "uint256"
			}
		],
		"name": "add",
		"outputs": [
			{
				"internalType": "uint256",
				"name": "",
				"type": "uint256"
			}
		],
		"stateMutability": "pure",
		"type": "function"
	}
]

var c_address = '0x2C9e040A01C1fbb9e2Bc2E9E73d56D839BffF2c4'
var contract = new web3.eth.Contract(abi, c_addr)

contract.methods.a().call().then(console.log)

var tx = {from : account.address, to : c_address , gas : 300000, gasPrice : 3000000, data : contract.methods.함수이름(input 값).encodeABI()}
var signPromise = web3.eth.accounts.signTransaction(tx, account.privateKey)

signPromise.then((signedTx)=> {var sentTx = web3.eth.sendSignedTransaction(signedTx.raw || signedTx.rawTransaction); sentTx.on("receipt", receipt=> {console.log(receipt)})})