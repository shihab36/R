#Creating Other Different Types of Vectors in R
# 1. Creating a sequence using Colon ":"
seq = 1:20
print (seq)

# Using Seq() Function 
seq1 = seq(1,20, by=2)
print(seq1)

#Sorting Elements in a vector 
seq2 = c (2, 4, 7, 9, 2, 5, 7, 10)
sorted_seq2 = sort(v_seq2) # Sorting numeric vectors 
print (sorted_seq2)

seq3 = c ("ECON", "SOC", "MCJ", "DS")
sorted_seq3 = sort(seq3) # Sorting Char. Variables 
print(sorted_seq3)

# Vector Manipulation: Vector Arithmetic Operations & Vector Recycling
vec = c(3, 4, 5, 6)
vec1 = c(1, 3, 2, 1)
result = vec * vec1
print (result)

#Vector Recycling
vec2 = c(1,3,4,7,8,9)
vec3 = c(3,5)  #vec3 = C(3,5,3,5,3,5)
result1 = vec2 + vec3 
print(result1)

#Accessing Vector Elements 
x = c(2, 3, 5)
ind = x[c(1)]
print (ind)

list = ls() #Showing all the variable names 

rm(list = ls()) #Removing all the variable saved in the current environment 



