# 1 
# 1 0
# 1 0 1
# 1 0 1 0

# for get how many numbers of rows from user
n=int(input("enter a number:"))

for i in range(1,n+1):
    for j in range(1,i+1):
        if j % 2 == 1:
            print("1",end=" ")
        else:
            print("0",end=" ")   
    print("\n")


