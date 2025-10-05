# sort a dictionary (ascending /descending) by value
# dictionary
my_dict = {'apple': 3, 'banana': 1, 'cherry': 5, 'date': 2}

# Sort by value (ascending)
asc = dict(sorted(my_dict.items(), key=lambda x: x[1]))

# Sort by value (descending)
desc = dict(sorted(my_dict.items(), key=lambda x: x[1], reverse=True))

print("Ascending:", asc)
print("Descending:", desc)
