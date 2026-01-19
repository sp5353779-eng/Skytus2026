class Flight:
    def __init__(self, seats):
        self.seats = seats

    def book(self):
        if self.seats > 0:
            self.seats -= 1
            print("Seat booked")
        else:
            print("No seats available")

f = Flight(2)
f.book()
f.book()
f.book()