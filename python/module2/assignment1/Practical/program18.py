# factorial using recursion

def fact(n):
    if n == 0 or n == 1:  
        return 1
    else:  
        return n * fact(n - 1)

print(fact(5)) 

# factorial using lambda function
fact=lambda n:1 if n==0 or n==1 else n*fact(n-1)
print(fact(5))

