library(tidyverse)
library(gapminder)


df = dplyr::filter(gapminder, country == "Bangladesh")

df1 = dplyr::select(gapminder, country, pop)

View(df1)


#Piping in R with dplyr: Piping a of chaining commands together. (%>%) is the
#pipe oparator

# 
sum(3,2) %>% mean() %>% log()

#Using gapminder data 
gapminder %>% select(country, pop) %>% filter(country == "Bangladesh")

#use of mutate() function: is used to make new col/var
gapminder %>% 
  mutate(TotalGDP = (pop*gdpPercap)/1000000000) %>%
  filter(country == "Bangladesh") %>%
  ggplot(aes(x = TotalGDP))+
    geom_density()
  