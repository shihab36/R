#t test
library(tidyverse)
library(gapminder)
library(patchwork)


#single sample t-test
#####################

#Hypothesis testing: H0: The mean life expectency is 50 years
#                    H1: The mean life expectency is not 50 years

#Observation: Sample data provides a mean life expectency of 48.9 . Is 
# it statistically significant?

gapminder %>% 
  filter(continent == "Africa") %>%
  select(lifeExp) %>%
  t.test(mu = 50)
#We can aslo create a object and save the t test in that
my_ttest <- gapminder %>% 
  filter(continent == "Africa") %>%
  select(lifeExp) %>%
  t.test(mu = 50)
attributes(my_ttest) # Viwing the attributes 

my_ttest$p.value #Shows only the P-value


########################
# Two sided test for difference of means
########################
gapminder %>% 
  filter(continent %in% c("Africa", "Europe")) %>% 
  t.test(lifeExp ~ continent, data = ., #lifeExp ~ Continent this is read as LifeExp by contitnent
         alternative = "two.sided")


#One sided test 
gapminder %>%
  filter(country %in% c("Ireland", "Switzerland")) %>%
  t.test(lifeExp ~ country, data = ., 
         alternative = "less",
         conf.level = 0.95)
  