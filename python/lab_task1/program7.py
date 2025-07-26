# print cities whose len is more than 5
lst_city = ['ahemdabad','botad','surat','baroda']
for i in lst_city:
    print(i.startswith("ahe"))
    if len(i)>5:
        print(i.upper(),"-->",len(i))
print(len(lst_city))


