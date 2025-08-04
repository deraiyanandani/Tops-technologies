# A 
# A B
# A B C
# A B C D

rows = int(input("Enter number of rows: "))

for i in range(1, rows + 1):
    for j in range(i):
        print(chr(65 + j), end=" ")
    print()