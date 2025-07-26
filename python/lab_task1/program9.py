# count odd-even numbers
lst=[22,11,42,13,58,59,54,21,23,26]
even=0
odd=0
for i in lst:
    if i%2==0:
        even+=1
        print("even=",even)
    else:
        odd+=1
        print("odd=",odd)