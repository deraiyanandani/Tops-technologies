# second smallest number in a list

def second_smallest(numbers):
    # Remove duplicates and sort the list
    unique_nums = sorted(set(numbers))
    
    if len(unique_nums) < 2:
        return "List must have at least two unique numbers"
    else:
        return unique_nums[1]

# Example usage
nums = [10, 5, 8, 3, 5, 2, 2, 9]
print("Second smallest number is:", second_smallest(nums))
