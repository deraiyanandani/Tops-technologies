#  takes a list and returns a new list with unique
# elements of the first list
def unique_list(lst):
    return list(set(lst))

nums = [1, 2, 2, 3, 4, 4, 5]
print("Unique elements:", unique_list(nums))
