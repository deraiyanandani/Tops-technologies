o_ser = []
e_ser = []

num = int(input("How many numbers sum you want to do : "))

for i in range(1, num + 1):
    print(f"Enter Num {i} : ")

    if i % 2 == 0:
        e_ser.append(i)
    else:
        o_ser.append(i)

print(o_ser)
print(e_ser)

print("Sum of odd numbers:", sum(o_ser))
print("Sum of even numbers:", sum(e_ser))