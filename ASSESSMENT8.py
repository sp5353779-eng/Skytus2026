class Laptop:
    def __init__(self, price):
        self.price = price

    def discount(self, d):
        self.price -= self.price * d / 100

l = Laptop(50000)
l.discount(10)

print("Price =", l.price)