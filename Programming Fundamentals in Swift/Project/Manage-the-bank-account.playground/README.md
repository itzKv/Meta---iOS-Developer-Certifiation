In this exercise, you will practice working with functions, loops, conditional statements and switch statements to manage the bank account you created in the first exercise of the project using the bank account operations you implemented in the second exercise of the project.

The account can be either a generic, debit or credit one. The account’s operations can be withdrawals or deposits. You will use functions, loops, conditional statements and switch statements to manage the bank account’s withdrawals and deposits.

After completing this final part of the project, your output to the console should resemble the below:

What would you like to do?
    1. Check bank account
    2. Withdraw money
    3. Deposit money
    4. Close the system
    Selected option: 4.
    The system is closed.
Note: Since the exercise generates random numbers for user input, your output might be slightly different than the above.


Instructions
Create a new playground in Xcode to complete this exercise.  Once you have created a new playground, follow the steps below to manage the bank account.

Tips
Use functions to handle the bank account’s transfer logic. Refer to the 
Introductions to functions
 video in module 3.

Use repeat while loops to manage the bank account based on the user’s choice. Refer to the 
Examples of loops in Swift 
reading in module 1.  

Use conditional statements to select the bank account’s operation based on the bank account’s type. Refer to the 
If, if/else and else/if statements 
video in module 1.

Use switch statements to choose the right bank account operation from the list of bank account operations provided by the virtual bank system interface. Refer to the
Switch statements
 reading in module 1.   


Step 1: Add the starter code to the playground
First, add the required starter code of the exercise to the playground. You have implemented the code logic in the previous two exercises of the project.

    class VirtualBankSystem {
        var accountType = ""
        var isOpened = true
        func welcomeCustomer() {
            print("Welcome to your virtual bank system.")
        }
        func onboardCustomerAccountOpening() {
            print("What kind of account would you like to open?")
            print("1. Debit account")
            print("2. Credit account")

The above code:

Defines a virtual bank system class.

Defines a bank account structure.

You will use this code to further manage the bank account in this exercise.


Step 2: Implement the transfer operation for debit and credit accounts 
Now, implement the method to handle money transfers. Inside the VirtualBankSystem class, implement a method called moneyTransfer with transferType of String type parameter, transferAmount of Int type parameter and bankAccount of BankAccount type in-out parameter.

You will use a VirtualBankSystem class instance for the banking operation option selected by the user. Then, make the chosen banking operation option on their bank account.

    Inside the transferMoney(transferType:transferAmount:bankAccount:) method, you will create money withdrawal and deposit logic for debit and credit accounts.


Switching on the transfer type value 

Add a switch statement that switches on the transferType parameter’s value. Based on the value, you will select the right type of bank account transfer operation. 

First switch case:

  The transferType parameter’s value is "withdraw". This means that the account’s operation is a withdrawal.
  
  Inside the switch statement, add an if statement. 
  
    Check if the accountType variable’s value is "credit". You're evaluating to see if you're dealing with a credit account. If it is, call the creditWithdraw(_:) method on the bankAccount and pass the transferAmount constant to perform a withdrawal on the credit balance.
    
    Chain an else if statement.
    
    Check if accountType variable’s value is "debit". You're evaluating to see if you're dealing with a debit account. If it is, call the debitWithdraw(_:) method on the bankAccount and pass the transferAmount constant to perform a withdrawal on the debit balance.

Second switch case:

  The transferType parameter’s value is "deposit" in this case.
  
  Inside the switch statement, add an if statement.
    
    Check if the accountType variable’s value is "credit". You're evaluating to see if you're dealing with a credit account. If it is, call the creditDeposit(_:) method on the bankAccount and pass the transferAmount constant to perform a deposit on the credit balance.
    
    Chain an else if statement.
    
    Check if accountType variable’s value is "debit". You're evaluating to see if you're dealing with a debit account. If it is, call the debitDeposit(_:) method on the `bankAccount` and pass the transferAmount constant to perform a deposit on the debit balance.
    
    Default case:
    
    Add a default case to make the switch statement exhaustive. The default case handles all values of the type parameter that other switch cases don’t handle.
    
    Inside the default case, add a break statement to exit the default case without doing anything else. This means that no account transfer operation happens because the account transfer type isn’t valid in this case.

You will test the money transfer method in the next steps of the exercise.


Step 3: Check balance of debit and credit accounts
Now, implement the method to check the balance of debit or credit accounts of the user’s bank account. The decision will be based on the user’s account type.

Inside the VirtualBankSystem class, implement a method called checkBalance with a bankAccount parameter of BankAccount type.
  
    Add a switch statement that switches on the accountType value. Based on the value, you will check the corresponding bank account balance.
    
    Add a switch case for "credit" and print the bank account’s credit balance information.
    
    Add a switch case for "debit" and print the bank account’s debit balance information.
    
    Add a default case and a break statement to exit without doing anything else.
    
    You will test the balance check utility method in the next steps of the exercise.


Step 4: Store states with variables 
You want a way to store the state of whether the virtual bank is open to accommodate the banking operation for the users. You will use variables to store the state. In the VirtualBankSystem class, create a variable property called isOpened with the value set to true.

Step 5: Manage the bank account based on the user interface option
Next, manage the bank account and perform its specific operation based on the user’s input.

Remember that you are generating random numbers for the user’s input because playgrounds can’t process user input by default.

Define repeat while loop
Declare a repeat while loop to repeat itself as long as the isOpened variable’s value is true in virtualBankSystem. This means users can perform bank operations on the virtual bank system interface until it closes. Inside the loop, it will handle the user’s input and perform the corresponding bank account operation.

Inside the while loop, do the following:

Use print statements to display the following on the interface:

What would you like to do? 
  1. Check bank account 
  2. Withdraw money 
  3. Deposit money 
  4. Close the system 
Assign the option constant equal to the result of generating a random number between 1 and 5 using the random(in:) method. The random(in:) method uses a closed range of integers that defines the lower and upper bounds of the generated random numbers.

Print the option constant using string interpolation. This outputs the user's selection to the console.

Create a switch statement inside the repeat while loop
Inside the while loop, create a switch statement that switches on the option constant’s value. You will perform any valid bank account operation accordingly.

    Add a switch case for the value 1. In this switch case, call the checkBalance(bankAccount:)  method on bankAccount.
  
    Add a switch case for the value 2. In this switch case, call the money transfer method with the "withdraw" string for the transferType parameter. Then pass transferAmount and bankAccount for the remaining arguments.
  
    Add a switch case for the value 3. In this switch case, call the transfer method with the "deposit" string for the transferType parameter. Then pass transferAmount and bankAccount for the remaining arguments.
  
    Add a switch case for the value 4. In this switch case, set the virtualBankSystem’s isOpened property to false and print "The system is closed.". This means the virtual bank system interface is closed. Consequently, the repeat while loop stops looping after reaching the end of its current iteration.
  
    Add a default case to handle the remaining cases. In this switch case, add a break statement to exit the default case without doing anything. This means that no bank account operation is performed since the user’s input is invalid in this case.


Step 6: Run your code
Run your program and note down the output.


