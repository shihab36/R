#variable
var1 = 10
print(var1)

var2 = "Data Science"
print(var2)

assign('var3', 50)
print(var3)

#To know the type of variables class command is used 
print(class(var2))
print(class(var1))

#finding variables 
print(ls(all.names = TRUE))

#Deleting Variable
rm(var1)
print(ls(all.names = TRUE))

#different data types in R 
#Vector Data types
# Logical Data
v <- TRUE 
print (class(v))

#Numeric Data 
v1 = 23.0
print (class(v1))

#Integer Data  
v2 <- 5L #to assign integer values we have to put "L" with the number 
print (class(v2))
#Complex Data 
v3 <- 3 + 2i # The Std. form of complex data is a + bi where a and b are int and i is the imaginary number
print(class(v3))

#Character Data Type
v4 <- "Hello" #Assigning any thing with "" is a Character 
print(class(v4))
cat(class(v4), v4)

#Raw Data type
v5 <- charToRaw("Hello")#Each element in the raw vector represents the ASCII value of each character in the string. 
print(v5)#For instance, 48 represents 'H', 65 represents 'e', 6c represents 'l', and 6f represents 'o'.
print(class(v5))

#Creating Vectors with C Functions
sub = c("Econ", "CSE")
print (sub)
print(class(sub))

int = c (2L, 3L)
print (int)
print(class(int))









