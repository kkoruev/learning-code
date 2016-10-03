fn = open("words.txt")
print fn
for word in fn:
    print word.upper().strip()


