library(readxl)
dataset <- read_excel("GDP_CO2.xlsx")
View(dataset)

plot(dataset$gdp, dataset$co2, main = "Scatter plot of GDP and CO2 Emmissions in Bangladesh",
     xlab = "GDP in Billions of Dollar", ylab = "CO2 Emmissions", pch = 20, col = "black")
model <- lm(dataset$co2 ~ dataset$gdp)
abline(model, pch = 60, col = "black")
