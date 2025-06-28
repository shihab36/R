str1 = "Shihab"
str2 = "Sumon"
print(str1)
print(str2)

print(class(str1))

# To know the length of the string use: number of character command "nchar"
print (nchar(str1))

#Concatenation of Strings 
print (paste(str1,str2, sep = ' '))

#Sub Strings
sub_str = substring('Economics', 2,5)
print (sub_str)

#Changing Character Case
result1 = toupper(str1)
print(result1)

result2 = tolower(str1)
print(result2)

#Formation changing of data types using "format()" command
num1 = 120
print(class(num1))
result3 = format(num1)
print (result3)
print (class(result3))

num2 = 2.445465454
result4 = format(num2, digit= 3)
print(result4)


str <- "Bangladesh"
print(length(str)) #length() function returnes  the length of the object   
print(mode(str)) #mode () to know the  type of the object
print(class(str))


str1 = c("I Love")
str2 = c("You")

s = paste(str1,str2) #Concatenate stings 
print (s)

z = strsplit(s," ") #Split every strings by " "
print (z)

