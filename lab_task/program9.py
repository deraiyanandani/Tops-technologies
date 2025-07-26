# program to print until user enter 0

# using while loop 
while True:
    # to get input from user
    num=int(input("enter a number:"))

    # to print output
    print("you entered:{}".format(num))

    # condition to break the loop when user enter 0
    if num==0:
        break
    
