#Creating a data frame from our datasheet
mydata <- read.csv("power_data.txt", header = TRUE, row.names = "Date")

#Looking a part of data frame with head() and tail()
head(mydata)
tail(mydata)

#Viewing the data sheet in tabular format
View(mydata)

#Checking the datatype of each column in the dataset
str(mydata)

#Looking for date column (will not show data as its index)
head(mydata$Data)

#Looking at row names
row.names(mydata)

#Accessing a specific and multiple row
mydata["2008-01-01",]
mydata[c("2008-03-12","2008-03-13"),]

summary(mydata)

#Without Parsing date column
mydata2 <- read.csv("power_data.txt", header = TRUE)

#Now Looking at the date column 
str(mydata2$Date)


#Convertion into date format
x <- as.Date(mydata2$Date)
head(x)
class(x)
str(x)

#Now creating Year, Month and Day column
year <- as.numeric(format(x,"%Y"))
head(year)

month <- as.numeric(format(x, "%m"))
head(month)

day <- as.numeric(format(x, "%d"))
head(day)

#Add Column to the dataset
mydata2 <- cbind(mydata2,year,month,day)
View(mydata2)
