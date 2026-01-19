class Shop:
    def __init__(self):
        self.products = []

    def add(self, p):
        self.products.append(p)

    def show(self):
        print(self.products)

s = Shop()
s.add("Pen")
s.add("Book")
s.show()