# program to calculate compound intrest

# getting values from user
p=int(input("enter principal amount:"))
r=int(input("enter rate of intrest:"))
t=int(input("enter time:"))

# calculate total amount for compound intrest formula
a=p*(1+r/100)*t

# calculate compound intrest
ci= a - p

# to print output
print("compound intrest is ",ci)