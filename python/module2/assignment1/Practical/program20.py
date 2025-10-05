# Password Generator

import random
import string

class User:
    def __init__(self, user_id, name, password):
        self.details = (user_id, name, password)

    def show(self):
        print("User Details:", self.details)


def generate_password(text):
    words = text.split()
    if not words:
        return "Error: No input given!"

    # Pick a random word
    word = random.choice(words).capitalize()

    # Add random numbers, special char, and letter
    password = word + str(random.randint(10, 99)) \
               + random.choice("!@#$%^&*") \
               + random.choice(string.ascii_letters)

    # Check length > 8
    if len(password) < 8:
        password += random.choice(string.ascii_letters) + str(random.randint(0, 9))

    return password


text = input("Enter some words: ")
pas= generate_password(text)

if "Error" not in pas:
    user = User("User01", "nandu", pas)
    user.show()
else:
    print(pas)
