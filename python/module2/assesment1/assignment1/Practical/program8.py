# a list contains a sublist

def contains_sublist(main_list, sub_list):
    # Check if sub_list exists inside main_list
    for i in range(len(main_list) - len(sub_list) + 1):
        if main_list[i:i+len(sub_list)] == sub_list:
            return True
    return False

main = [1, 2, 3, 4, 5, 6]
sub = [3]

if contains_sublist(main, sub):
    print("Sublist found.")
else:
    print("Sublist not found.")

