s = "apple banana apple mango banana apple"
words = s.split()
freq = {}
for w in words:
    freq[w] = freq.get(w, 0) + 1
print(freq)