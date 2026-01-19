class BankAccount:
    def __init__(self, balance):
        self.balance = balance

    def deposit(self, amt):
        self.balance += amt

    def withdraw(self, amt):
        self.balance -= amt

acc = BankAccount(1000)
acc.deposit(500)
acc.withdraw(300)

print("Balance =", acc.balance)