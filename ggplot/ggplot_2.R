#Calling the Library
library(tidyverse)
library(gapminder)

head(gapminder)

#Boxplot
ggplot(gapminder, mapping = aes(continent, lifeExp)) +
  geom_boxplot()

#violin 
ggplot(gapminder, aes(continent, lifeExp, fill = continent)) +
  geom_violin(draw_quantiles = c(.25, .50, .75))

#Jitter
ggplot(gapminder, aes(continent, lifeExp)) +
  geom_jitter(alpha = .2) +
  geom_violin(draw_quantiles = c(.25, .50, .75))

# Facting: Facets divide a plot into subplots based on the values of one or more
# discrete variables.

ggplot(gapminder, aes(lifeExp,gdpPercap)) +
  geom_point()+
  facet_grid(.~continent) #Facet into columns based on continent.


ggplot(gapminder, aes(lifeExp,gdpPercap)) +
  geom_point()+
  facet_wrap(~continent) #Wrap facets into a rectangular layout based on continent

#Coordinate flipping 
ggplot(gapminder, aes(continent, lifeExp)) +
  geom_boxplot() +
  coord_flip()  # it flips the coordinate


#Changing of Theme and coloring the axis name
ggplot(gapminder, aes(continent, lifeExp, fill = continent)) +
  geom_boxplot() +
  theme(axis.text.x = element_text(angle = 90, vjust = 0.5, hjust=1, color = "red"), axis.text.y = element_text(color = "blue"))+
  labs(title = "Boxplot of Continent wise Life Expectency",
       x = "Continets", y = "Life Expectency")
  


