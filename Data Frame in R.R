#Defining a data frame 
df1 = data.frame(
  s_id = c(1,2,3),
  S_names = c("Shakil", "Shobuj", "Dip"),
  age = c(23,21,24)
)
print(df1)
print(df1[1,]) #it will print all the 1st row value in as vector 
print(df1[,2]) #it will print all the 2nd col value in as vector
print(df1[2,3]) #it will print the value at [2,3] index

#Printing row and col names 
rownames(df1)
colnames(df1)

#To know the structure of df: call the str() function 
str(df1)

#Printing Summary statistics of data frame:
summary(df1)

#Adding new col to existing data frames 
df1$dept = c("ECON", "SOC", "MCJ")
print(df1)

#Binding 2 data frame(note: dim must be same)
df2 = data.frame(
  s_id = c(4,5,6),
  S_names = c("Shihab", "Mimi", "Raha"),
  age = c(24,23,23),
  dept = c("CSE", "EEE", "STAT")
)

df = rbind(df1,df2)
print(df)