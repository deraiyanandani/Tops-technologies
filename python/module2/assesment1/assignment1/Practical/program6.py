# first appearance of the substring 'not' and'poor' from a given string, if 'not' follows the 'poor', 
# replace the whole 'not'...'poor' substring with 'good'


def replace_not_poor(sentence):
    not_index = sentence.find('not')
    poor_index = sentence.find('poor')

    # Check if 'not' comes before 'poor' and both exist
    if not_index != -1 and poor_index != -1 and poor_index > not_index:
        # Replace the part from 'not' to 'poor' with 'good'
        sentence = sentence[:not_index] + 'good' + sentence[poor_index + 4:]
    return sentence

text = input("Enter a sentence: ")
result = replace_not_poor(text)
print("Result:", result)
