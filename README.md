#Optimize smart contract operation using Assembly

Student Name : Anushka Aggarwal
Student ID : 101195651

This smart contract is created to demonstrate the optimization of a common smart contract operation using Assembly stream and low-level EVM.

DETAILS :
In this, a smart contract has been created, namely, 'Assembly_optimize'. There are 4 functions in it, 2 that use normal solidity and the other 2 using Assembly. The first demonstration is of a simple for-loop. The second demonstration allows user input for an array that takes integers and stores it. The idea is to compare the same operations by writing them both using different coding, and see which one is more cost efficient in terms of gas, and thus more optimized.

Efficiency :
By running multiple tests on the smart contract, it has been determined that the functions using Assembly are far more cost efficient in terms of gas costs(transaction and execution) than the ones using normal solidity. 

Testing :
Unit tests have been written in the 'test-assembly-optimize.js' file. The smart contract has been rigorously tested manually using Remix. However, while trying to run tests locally, truffle failed to compile the contract, giving SyntaxError for using low level EVM. Since these features cannot be removed, this contract has not been tested with truffle.

Security :
Since this smart contract uses assembly and low level EVM, there are obvious potential threats like incorrect stack access etc, due to bypassing a lot of the solidity security checks. Also, the latest solidity version has not been used because it doesn't allow us to use low level EVM.

 However, if care is taken to manually secure the smart contract while writing code using assembly, the cost efficiency and saved gas might surpass any lingering security concerns.