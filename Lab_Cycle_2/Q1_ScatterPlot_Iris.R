# Load the built-in iris dataset
data(iris)

# Create a scatter plot with labels and title
plot(iris$Sepal.Length, iris$Petal.Length,
     main = "Scatterplot of Sepal Length vs Petal Length",
     xlab = "Sepal Length (cm)",
     ylab = "Petal Length (cm)",
     col = "blue",
     pch = 19)  # solid circle points

# Save the plot as a high-resolution PNG file
png(filename = "iris_scatterplot.png", width = 1600, height = 1200, res = 300)

# Recreate the same plot for saving
plot(iris$Sepal.Length, iris$Petal.Length,
     main = "Scatterplot of Sepal Length vs Petal Length",
     xlab = "Sepal Length (cm)",
     ylab = "Petal Length (cm)",
     col = "blue",
     pch = 19)

# Close the device to save the file
dev.off()
