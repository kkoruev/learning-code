file_name = "mbox-short.txt"
fh = open(file_name)
count = 0
numbers_sum = 0
for line in fh:
    if not line.startswith("X-DSPAM-Confidence:"): 
        continue
    else:
        count = count + 1
        current_number = float(line[line.find(":") + 1:].strip())
        numbers_sum = numbers_sum + current_number

print numbers_sum / count
