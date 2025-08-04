# print numbers divisible by 13 in given range
# for get range from user
start_range=int(input("enter a start range number:"))
end_range=int(input("enter a end range number:"))

# for loop to iterate each number
for i in range(start_range,end_range):

    # condition to cheack number is divisable or not
    if i%13==0:
        print(i)


