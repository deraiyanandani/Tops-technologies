# to add ly when string ends with ing otherwise add ing

# to get string from user
str=input("Enter a string:")

# logic

if str.endswith("ing"):

    result = str + "ly"
    print("strings:",result)

else:
    result = str + "ing"
    print("string:",result)
