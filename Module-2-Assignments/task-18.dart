class BankAccount
{
  String accountNumber;
  String accountHolder;
  double balance;

  BankAccount(this.accountNumber, this.accountHolder, this.balance);

  void deposit(double amount)
  {
    if (amount > 0)
    {
      balance += amount;
      print("Deposited \$${amount.toString}. New balance: \$${balance.toString}");
    }
    else
    {
      print("Deposit amount must be positive.");
    }
  }

  void withdraw(double amount)
  {
    if (amount > balance)
    {
      print("Insufficient balance. Withdrawal denied.");
    }
    else if (amount <= 0)
    {
      print("Withdrawal amount must be positive.");
    }
    else
    {
      balance -= amount;
      print("Withdrew \$${amount.toString}. New balance: \$${balance.toString}");
    }
  }

  void checkBalance()
  {
    print("Account Holder: $accountHolder");
    print("Account Number: $accountNumber");
    print("Current Balance: \$${balance.toString}");
  }
}

void main()
{
  BankAccount account = BankAccount("123456789", "Raj Pandhi", 1000.0);

  account.checkBalance();
  account.deposit(500.0);
  account.withdraw(200.0);
  account.withdraw(1500.0);
  account.checkBalance();
}
