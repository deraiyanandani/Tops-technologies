# Counting the frequencies in a list

no = [1, 1, 1, 5, 5, 3, 1, 3, 3, 1, 4, 4, 4, 2, 2, 2, 2]

fq = {}   

for num in no:
    if num in fq:
        fq[num] += 1
    else:
        fq[num] = 1


for key, value in fq.items():
    print(f"{key} : {value}", end=" , ")