#Most of the graphical representation is done by plot() function 
plot(c(1,2,3), c(1,2,3))

plot(c(-3,3), c(-1,5), type = "n",xlab = "x", ylab = "y")

#Using the abline() function 
x <- c(1,2,3)
y <- c(1,3,8)
plot(x,y, type = 1)

lmount <- lm(y ~ x)
abline(lmount)

abline(c(2,1))

lines(c(1.5,2.5),c(3,3))

# Ploting Explicit Functions: g(t) = (t^2 + 1)^0.5
g <- function(t) {
  return (t^2 + 1)^0.5
}
x <- seq(0,5, length = 1000)
y <- g(x)
plot(x,y, type = "l")

#We can also use the plot function
exp <- function(x) {return(x^2 + 1)^0.5}
plot (exp, 0, 5)

x <- seq(1,10)
z <- seq(-10,-1)

plot(x,z, type = "o", main = "Title", sub = "Subtile", bg = "red", pch = 2:1, col = "blue")

Speed <- cars$speed
Distance <- cars$dist
plot(Speed, Distance,type = "l", col = "blue", bg = "green")


plot(Speed, Distance,
     panel.first = lines(stats::lowess(Speed, Distance), lty = "dashed"),
     pch = 0, cex = 1.2, col = "blue")


#plot(Speed, Distance, panel.first = grid(8, 8),
#     pch = 0, cex = 1.2, col = "blue")
