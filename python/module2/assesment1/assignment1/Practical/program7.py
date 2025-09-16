# find Greatest Common Divisor of two numbers

# logic
def gcd(a, b):
    while b != 0:
        a, b = b, a % b
    return a

print("GCD of 20 and 28 is:", gcd(20, 28))
print("GCD of 98 and 56 is:", gcd(98, 56))
