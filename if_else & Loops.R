#loops in R 
#
x <- c(5,12,13)
for (n in x) print(n^2) #Prints sqrs of each element in x vector
#
i <- 1
while (i <= 10) i <- i+4
print(i)

#
i <- 1
while(T) {
  i <- i+1
  if (i > 10) break
}

print(i)
#
a = 1
while (a <= 10) {
  a = a+1
  print("YES")
  print(a)
}

# if_else statement
x <- 2
if (x == 2) x else x+1 # Here the condition (x == 2) in TRUE of it prints x
                       #Other wise it will the else part execute x+1 

x <- 3
if (x == 2) x else x+1 #Now it executed the else part 












