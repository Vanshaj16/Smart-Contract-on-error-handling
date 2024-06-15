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
