# print even numbers between two numbers(get numbers from user)
# numbers from user
start=int(input("enter a first number:"))
end=int(input("enter a second number:"))

# for loop to iterate each element 
for i in range(start,end):
    # condition to check number is even or not
    if i % 2 == 0:
        print(i)