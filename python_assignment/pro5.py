# to get string from user
str=input("Enter a string:")

# to reject fully numeric input

if str.isnumeric():
    print("invalid input! please enter string..")




# check if number is to short 

elif len(str) < 3:
    print("string is too short.. enter minimum 3 characters.")

# logic

else:

    if str.endswith("ing"):

        result = str + "ly"
        print("strings ends with 'ing' adding 'ly'",result)

    else:
        result = str + "ing"
        print("modifying string",result)
