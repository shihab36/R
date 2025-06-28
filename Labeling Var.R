library(tidyverse)
library(readxl)
library(gtExtras)

df <- read_excel("MyData.xlsx")
head(df)

df1 <- df %>%
  select(main_id, toilet2, edu) %>%
  mutate(edu =  factor(edu,levels = c(0,1), labels = c("Educated", "Not Educated"),exclude = NA))

# In simple way
df1$toilet2 <- factor(df1$toilet2, levels = c(0,1), labels = c("Good", "Bad"), exclude = NA)
head(df1)

