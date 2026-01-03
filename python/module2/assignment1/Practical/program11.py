n = int(input("Enter number of tuples: "))
pairs = []

for i in range(n):
    a = input("Enter first value: ")
    b = input("Enter second value: ")
    pairs.append((a, b))

x, y = zip(*pairs)

print("First List:", list(x))
print("Second List:", list(y))