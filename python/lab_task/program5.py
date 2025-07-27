# Temperature Converter

print("Converte Temperature")
print("1. Fahrenheit to Celsius")
print("2. Celsius to Fahrenheit")

choice = input("Enter your choice:")

if choice == '1':
    f = float(input("Enter temperature in Fahrenheit: "))
    c = (f - 32) * 5/9
    print("celsius=",c)

elif choice == '2':
    c = float(input("Enter temperature in Celsius: "))
    f = (c * 9/5) + 32
    print("Fahrenheit=",f)

else:
    print("Invalid choice. Please enter 1 or 2.")
