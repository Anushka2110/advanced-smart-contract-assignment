# advanced-smart-contract-assignment
Student Name : Anushka Aggarwal<br>
Student ID : 101195651

This smart contract is created to demonstrate the optimization of a common smart contract operation using Assembly stream and low-level EVM.

### DETAILS :<br>
In this, a smart contract has been created, namely, 'Assembly_optimize'. There are 4 functions in it, 2 that use normal solidity and the other 2 using Assembly. The first demonstration is of a simple for-loop. The second demonstration allows user input for an array that takes integers and stores it. The idea is to compare the same operations by writing them both using different coding, and see which one is more cost efficient in terms of gas, and thus more optimized.

#### Efficiency :<br>
By running multiple tests on the smart contract, it has been determined that the functions using Assembly are far more cost efficient in terms of gas costs(transaction and execution) than the ones using normal solidity. 

#### Testing :<br>
Unit tests have been written in the 'test-assembly-optimize.js' file. The smart contract has been rigorously tested manually using Remix. However, while trying to run tests locally, truffle failed to compile the contract, giving SyntaxError for using low level EVM. Since these features cannot be removed, this contract has not been tested with truffle.

#### Security :<br>
Since this smart contract uses assembly and low level EVM, there are obvious potential threats like incorrect stack access etc, due to bypassing a lot of the solidity security checks. Also, the latest solidity version has not been used because it doesn't allow us to use low level EVM.

 However, if care is taken to manually secure the smart contract while writing code using assembly, the cost efficiency and saved gas might surpass any lingering security concerns.

### Steps to run it in Remix :<br>
1. Download the repository.
2. Copy Assembly_optimize.sol to Remix.
3. Compile the smart contract. Make sure to enable optimization.
4. Deploy the smart contract.
