# highest 3 values in a dictionary

my_dict = {'a': 10, 'b': 25, 'c': 5, 'd': 40, 'e': 30}

# Get only the values, sort them, and take top 3
top3 = sorted(my_dict.values(), reverse=True)[:3]

print("Top 3 highest values:", top3)
