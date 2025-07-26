# to count digits from number

# to get number from user
num = int(input("Enter a number: "))
count = 0

# while loop for condition and looping
while num > 0:

    # each time it will remove last digit and goes until 0
    num //= 10
    count += 1

# to print the output
print("Number of digits:", count)
