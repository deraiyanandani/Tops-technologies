# get unique values from a list
def unique_values(my_list):
    return list(set(my_list))

nums = [1, 2, 2, 3, 4, 4, 5]
print("Unique values are:", unique_values(nums))
