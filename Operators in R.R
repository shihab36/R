# Logical Oparetors in R:
# 1. Use of && (the and operator):
#Takes 1st element from both of the vectors and returns true only if both are true.
v <- c(1,4)
t <- c(1,4)
print(v[1]&&t[1]) 

# 2. The use of || (the or operator):
#Takes 1st element of both the vectors and gives TRUE if one of them is TRUE
x <- c(1,0,TRUE,2+2i)
y <- c(1,3,TRUE,2+3i)
print(x[1]||y[1])

#With element wise competition & and | is used
a <- c(3,1,TRUE,2+3i)
b <- c(4,1,FALSE,2+3i)
print(a&b)

m <- c(3,0,TRUE,2+3i)
n <- c(4,0,FALSE,2+3i)
print(m|n)

# ! the Logical Not operator:
# it takes every element from a vector and prints FALSE if the element is TRUE and vise versa
c <- c(2,0,4,0+0,FALSE,TRUE,2+3i)
print(!c)

