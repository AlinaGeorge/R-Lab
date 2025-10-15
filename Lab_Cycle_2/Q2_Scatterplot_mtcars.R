mtcars$cyl <- as.factor(mtcars$cyl)

colors <- c("purple", "green", "orange")

plot(mpg ~ disp, data = mtcars,
     main = "Scatterplot of MPG vs. Displacement",
     xlab = "Displacement (cu.in.)",
     ylab = "Miles per Gallon (MPG)",
     col = colors[mtcars$cyl],
…}

legend("topright",
       legend = levels(mtcars$cyl),
       title = "Number of Cylinders",
       col = colors,
       pch = 19,
       bty = "y")
