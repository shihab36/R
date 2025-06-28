library(readxl)
library(tidyverse)
library(gapminder)

df <- read_excel("GDP_CO2.xlsx")
head(df)

#Removing year col
df <- df %>%
  select(- c(1,5,6))
  
#Renaming col
df <- df %>%
  rename(year = "Cleaned Year")


#Converting year(char) into year(int)
df$year = as.integer(df$year)

#Seeing new columns 
head(df)


# Ensure the year column is in Date format if it's not already
df %>%
  filter(year >= 2011 & year <= 2020) %>%
  ggplot(aes(year,co2)) +
  geom_line()

df %>%
  filter(year >= 2011 & year <= 2020) %>%
  ggplot(aes(gdp,co2))+
  geom_point()+
  geom_smooth()


ggplot(df,aes(gdp,co2))+
  geom_point(aes(color = "yellow"))+
  geom_smooth()

 
