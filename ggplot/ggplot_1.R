#Installing the tidyverse library
install.packages("tidyverse")
#ggplot2 installation 
install.packages("ggplot2")

#Calling the library 
library(ggplot2)
library(tidyverse)
library(gapminder)

#Viewing the inbuilt data set of R 
View(mpg)
head(mpg)

#Point Plot
ggplot(mpg,aes(displ, hwy, color = model)) +
  geom_point() #Coloring the dots on the basis of model

ggplot(mpg,aes(displ, hwy, color = class)) +
  geom_point() #Coloring the dots on the basis of class

#Line Plot
#Defining dataframe
df = data.frame(col1 = c(1:3), col2 = c(1,4,2))
#Ploting df 
ggplot(df, aes(col1,col2)) +
  geom_line(color = "red", size = 1)+
  geom_point()

#Bar Chart 
ggplot(gapminder) +
  geom_bar(aes(continent), fill = "red")+
  theme_minimal()+
  ggtitle("Continents in The World") +
  labs(x = "Continets", y = "Count/Frequencies")
# Ploting only year == 1952
gapminder %>% 
  filter(year == 1952) %>%
  ggplot(aes(continent)) +
  geom_bar()

#Stacked Bar 
gapminder %>% 
  filter(year >= 1952 & year <= 1970) %>%
  ggplot(aes(year, pop)) +
  geom_bar(stat = "identity", aes(fill = continent))



#Relation between gdp_per_capita and lifeepx in Bangladesh
sub_gapmin <- subset(gapminder, country == "Bangladesh")
lmodel <- lm(sub_gapmin$lifeExp ~ sub_gapmin$gdpPercap)
## Plotting the linear model
ggplot(gapminder, aes(lifeExp, gdpPercap))+
  geom_point()+
  geom_smooth(method = "lm")



#Only Bangladesh year wise pop
df <- data.frame(gapminder)
df$n_pop <- df$pop/1000000
df$n_pop <- round(df$n_pop, digits = 2)

df %>%
  filter(country == "Bangladesh") %>%
  ggplot(aes(year, n_pop)) +
  geom_bar(stat = "identity", aes(fill = year)) +
  ggtitle("Population of Different Years in Bangladesh")+
  labs(x = "Year", y = "Total Population")

ggsave("pop_bd.png")
  

