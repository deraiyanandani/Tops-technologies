# # two string separated by a space and swap the first two characters of each string.
# # Take input from the user
# str1 = input("Enter first string: ")
# str2 = input("Enter second string: ")

# # Swap first two characters
# new_str1 = str2[:2] + str1[2:]
# new_str2 = str1[:2] + str2[2:]

# # Combine into a single string separated by space
# result = new_str1 + " " + new_str2

# print("Result:", result)



# Takeing input from the user
str1 = input("Enter first string: ")
str2 = input("Enter second string: ")

# Swap the first two characters using slicing
temp_swap = str1[:2] 
str1 = str2[:2] + str1[2:] 
str2 = temp_swap + str2[2:] 

# Combine into a single string separated by a space
result = str1 + " " + str2

print("Result:", result)