# remove dublicate value from list
lst = [23,34,23,11,11,5,4]

# converting list into set cause set don't allow dublicate value
set_numbers=set(lst)

# converting set into list 
lst_number=list(set_numbers)
print(lst_number)