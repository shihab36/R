#Lists are R objects which contain elements of different types like - numbers,
#strings, vectors and another list inside it. A list also contain a matrix or 
#a function as its elements. Lists is created using list() function

list1 <- list(28,"Data Scince",c(10,FALSE,"ABC"),FALSE)

print(class(list1))
print(list1[2])
print(list1[3])

list2 <- unlist(list1) #Unlisting list1 and combining it to a single vector
print(class(list2))
print(list2)

#add element in list with append():
list3 <- append(list1,30) # add's 30 at the last of the list 
print(list3)

list4 <- append(list1,30, after = 0) # add's 30 at the first of the list 
print(list4)

#We also can can add 2 or more list with c() and append() function
l1 <- list(1,3,5,7)
l2 <- list(2,4,6,8)
result <- c(l1,l2)
print(result)

#Deleting element
l3 <- list(30,40,50,60,70,80,90,100)
result1 <- l3[-2]
print(result1)

resutl3 <- l3[-c(5,7)] # Removing multiple elements with [-c()]
print(resutl3)


#Matrix in R 
mat1 = matrix(c(1:13), ncol = 4, byrow = F)
print(mat1)
print(mat1[4,4]) #printing element 

mat2 = matrix(c(1:16), nrow = 4, byrow = F)

print (mat1 + mat2)


#Array in R
array1 = array(c(C(1:9),c(10:18)), dim = c(3,3,2)) #Here the argument dim = c(): 2 = there 
#will be created 2 matrix with the dim of 3x3
print(array1[1,1,2])# Here 2 = the number of Matrix, and 1,1 is the element at that position
print(array1[3,3,1])# Here 1 = the number of Matrix, and 3,3 is the element at that position
print(array1)

#Arrays can also be created with multiple vectors
vec1 = c(1,2,3)
vec2 = c(7:12)

#Assigning Row,col,mat names 
rownames = c("row1", "row2", "row3")
columnames = c("col1", "col2", "col3")
matnames = c("mat1", "mat2")

#Defining array2
array2 = array(c(vec1,vec2), dim = c(3,3,2), dimnames = list(rownames, columnames, matnames)) #Here the argument dim = c(): 2 = there 
print (array2)

operation = array1[,,1] + array2[,,2]
print(operation)

