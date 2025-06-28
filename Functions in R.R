#Functions in R: Making a Functions that can count Odd Numbers in a Vector 
oddcount <- function(x) {
  k <- 0
  for (n in x){
    if (n %% 2 == 1) k <- k+1
  }
  return(k)
}
z <- c(1,2,4,5,8,11)
oddcount(z)

#Making a Sum Functions 
f <- function(x) return(x + y)
y <- 5

f(7)

#A Function can also take default augments 
g <- function(x, y=2, z=TRUE ) {
  return(x + y)
}
g(4)


#Making Matrix with rbind() and cbind()
m <- rbind(c(1,4), c(2,2))
print(m %*% c(1,1)) # Multiplying matrix m with c (1,1)

n <- cbind(c(1:7), c(7:1), c(1))
print(n)

#Making Lists in R 
x <- list (u=2, v="abc")
print (x$u)
print(x$v)

hm <- hist(Nile) # using R's inbuild Data set
print (hm) #hist() returns a list with a number of components which is saved in hm
#But a more compact alternative for printing lists like this is str():
str(hm) #Here str stands for structure. This function shows the internal structure of any R object, not just lists. 

#Creating Data Frame where data are stored with the help of lists 
d <- data.frame(list(kids = c("Jack", "Jill"), ages = c(12,10)))
print(d)

#Regression Analysis with the help of data frame and lists 
examsquiz <- read.table("ExamsQuiz.txt",header=FALSE) #Importing data set
lma <- lm(examsquiz$V2 ~ examsquiz$V1) #Here the lm() stands for linear model
print(summary(lma)) 








