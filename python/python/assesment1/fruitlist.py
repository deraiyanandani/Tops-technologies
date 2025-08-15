fruit_list = []

def view_fruits():
    if not fruit_list:
        print("No fruits available")
    else:
        for i, fruit in enumerate(fruit_list, 1):
            print(f"{i}. {fruit['name']} - {fruit['qty']}kg - ₹{fruit['price']}")

while True:
    print("\n--- Fruit Market ---")
    print("1) Manager\n2) Customer\n3) Exit")
    role = input("Select your role: ")

    if role == "1":  # Manager
        while True:
            print("\n--- Manager Menu ---")
            print("1) Add fruit\n2) View stock\n3) Update stock\n4) Back")
            choice = input("Enter choice: ")

            if choice == "1":  # Add fruit
                for _ in range(int(input("How many fruits to add? "))):
                    name = input("Fruit name: ")
                    qty = int(input("Quantity (kg): "))
                    price = int(input("Price per kg: ₹"))
                    fruit_list.append({"name": name, "qty": qty, "price": price})

            elif choice == "2":  # View stock
                view_fruits()

            elif choice == "3":  # Update stock
                view_fruits()
                idx = int(input("Fruit number to update: ")) - 1
                if 0 <= idx < len(fruit_list):
                    fruit = fruit_list[idx]
                    fruit['name'] = input(f"Name [{fruit['name']}]: ") or fruit['name']
                    fruit['qty'] = int(input(f"Qty [{fruit['qty']}]: ") or fruit['qty'])
                    fruit['price'] = int(input(f"Price [{fruit['price']}]: ") or fruit['price'])
                    print("Updated successfully!")

            elif choice == "4":  # Back
                break

    elif role == "2":  # Customer
        view_fruits()
        if fruit_list:
            idx = int(input("Fruit number to buy: ")) - 1
            if 0 <= idx < len(fruit_list):
                qty = int(input(f"Quantity (max {fruit_list[idx]['qty']}kg): "))
                if qty <= fruit_list[idx]['qty']:
                    total = qty * fruit_list[idx]['price']
                    fruit_list[idx]['qty'] -= qty
                    print(f"Bill: {qty}kg {fruit_list[idx]['name']} = ₹{total}")
                else:
                    print
        
    elif role == "3":
        print("Thanks for visiting.")
        break

