# to count word from sentance

# taking input from user
sentence = input("Enter a sentence: ")

# spliting sentence to count word 
words = sentence.split()

# new dict to store word counts
word_count = {}

# logic
for word in words:
    if word in word_count:
        word_count[word] += 1
    else:
        word_count[word] = 1

print("Word occurrences:")
for word, count in word_count.items():
    print(word, ":", count)