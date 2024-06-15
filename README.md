#Project: Smart-Contract-on-error-handling

This Solidity program is to create a smart contract on error handling using require(), assert(), revert() statements.The purpose of this program is to handle the errors in the solidity program.

##Description
This program is a smart contract on on error handling using the three methods i.e require(), assert(), revert() in Solidity.Solidity is a programming language used for developing smart contracts on the Ethereum blockchain.

##Getting Started
1) The program contain two state variable i.e total_balance1 and total_balance2 with keyword public, which is used to get these variables displayed after the smart contract is deployed.
2) There is a constructor which initializes both the state variables to 0(zero).
3) There are four functions-
   1. The first function is named as "requireDeposit" contain the require statement used to validate inputs or conditions before execution. In this function, it checks that the deposit amount is greater than 1000. If not, it throws an error and reverts the transaction and give the statement "Deposit amount must be greater than or equal to 1000", otherwise increment the total_balance1 by adding the amount to it.
   2. The second function named "revertWd1"contain the revert statement used to revert the transaction with a custom error message.This function is used for the total_balance1 account. In this function, it checks if the withdrawal amount exceeds the balance. If true, it reverts the transaction with an error message.
   3. The third function named "assertFixDeposit" contain the assert statement used to check for conditions that should allways occur.This function is used for the total_balance2 account. In this function, it verifies that the value assigned to total_balance2 is equal. If the condition fails, it indicates a serious bug in the contract.
   4. The fourth function named "revertWd2" contain the revert statement related to the total_balance2 account used to revert the transaction with a custom error message.In this function, it checks if the withdrawal amount exceeds the balance. If true, it reverts the transaction with an error message.
      
#Executing program
To run this program, you can use Remix, an online Solidity IDE. To get started, go to the Remix website at https://remix.ethereum.org/.

Once you are on the Remix website, create a new file by clicking on the "+" icon in the left-hand sidebar. Save the file with a .sol extension (e.g., ErrorP.sol). Copy and paste the following code into the file:
```
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;
contract errorproject {
    uint public total_balance1;
    uint public total_balance2;
    constructor() {
        total_balance1 = 0;
        total_balance2 = 0;
    }

    // Function to demonstrate require()
    function requireDeposit(uint amount) public {
      // Require that the deposit amount is greater than or equal to 1000
        require(amount >= 1000, "Deposit amount must be greater than or equal to 1000");
        total_balance1 += amount;
    }
// Function to demonstrate revertWithdraw()
    function revertWd1(uint amount) public {
        if (amount > total_balance1) {
            // Revert if withdrawal amount exceeds balance
            revert("Insufficient balance");
        }

        total_balance1 -= amount;
    }


    // Function to demonstrate assert()
    function assertFixDeposit(uint value) public {
       total_balance2=value;
        // Assert that new balance calculation is correct
        assert(total_balance2 == value);
        total_balance2=value;
    }

    // Function to demonstrate revert()
    function revertWd2(uint value) public {
        if (value > total_balance2) {
            // Revert if withdrawal amount exceeds balance
            revert("Insufficient balance");
        }

        total_balance2 -= value;
    }
}
```

To compile the code, click on the "Solidity Compiler" tab in the left-hand sidebar. Make sure the "Compiler" option is set to "0.8.26" (or another compatible version), and then click on the "Compile ErrorP.sol" button.

Once the code is compiled, you can deploy the contract by clicking on the "Deploy & Run Transactions" tab in the left-hand sidebar. Select the "errorproject" contract from the dropdown menu, and then click on the "Deploy" button.
Test the contract by input the value in the status bar.

##Authors
Vanshaj

vanshajsen16@gmail.com
