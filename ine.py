#Theo Gonzales 03/13/2021

#Creates a file object, stored in the variable infile:
infile = open('data.txt', 'r')
#string r tells that we want to open the file for reading
#string w could be used to open a file for writing
#after file is read, close the file object with infile.close()
#you can load all lines into a list of strings by
    #lines = infile.readlines()
#compute the average of the numbers on all lines:
"""
mean = 0
for number in lines:
    mean = mean +number
mean = mean/len(lines)
"""