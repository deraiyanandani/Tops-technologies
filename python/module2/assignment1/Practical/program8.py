# a list contains a sublist

main_list = list(map(int, input("Enter main list: ").split()))
sub_list = list(map(int, input("Enter sublist: ").split()))

if str(sub_list)[1:-1] in str(main_list)[1:-1]:
    print("Sublist exists")
else:
    print("Sublist does not exist")
