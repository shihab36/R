library(tidyverse)
library(gapminder)
library(gtExtras)

gapminder %>%
  filter(continent == "Europe") %>%
  group_by(country) %>%
  summarise(`GDP Per Capita` = round(mean(gdpPercap)),
            `Pop Size` = round(mean(pop)),
            `Life Expectency` = list(lifeExp)) %>% 
  arrange(-`GDP Per Capita`) %>%
  head(10) %>%
  gt() %>%
  gt_plt_dist(`Life Expectency`) %>%
  tab_header(title = "GDP and Population size in Europe") %>%
  cols_align(align = "left", )

plot


is_prime <- function(n) {
  if (n <= 1) return(FALSE)
  if (n == 2) return(TRUE)
  if (n %% 2 == 0) return(FALSE)
  for (i in 3:sqrt(n)) {
    if (n %% i == 0) return(FALSE)
  }
  return(TRUE)
}


#Taking input
num <- readline(prompt = "Enter a number: ")
is_prime(num)
  


