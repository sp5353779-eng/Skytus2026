class Book:
    def __init__(self, title, author, price):
        self.title = title
        self.author = author
        self.price = price

    def display(self):
        print(self.title, self.author, self.price)

b = Book("Python", "Guido", 500)
b.display()