print ("Welcome to the English to Pig Latin translator!")

pyg = 'ay'
 
original = raw_input('James:')
 
if len(original) > 0 and original.isalpha():
    word = original.lower()
    first = word[0]
    if first == "a" or first == "e" or first == "i" or first == "o" or first == "u":
        new_word = word + pyg
        print new_word
    else:
        new_word = word[1:] + first + pyg
        print new_word
else:
    print 'empty'
