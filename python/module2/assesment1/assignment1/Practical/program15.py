# Fibonacci numbers

n = int(input("Enter number: "))
a=0
b=1
for i in range(2, n):
    fib=a + b

print("First few Fibonacci numbers are:", fib)
