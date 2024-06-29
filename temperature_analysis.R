library("datasets")
library(dplyr)
library(ggplot2)

data <- read.csv("Downloads/city_temperature.csv")
head(data)
summary(data)

print(length(unique(data$AvgTemperature)))

# Removing rows with NA values
data <- na.omit(data)
head(data)

# Removing incorrect year values
data <- subset(data, Year != 200 & Year != 201)

# Aggregating data to average temperature per region for each year
mean_temp_by_region_year <- aggregate(AvgTemperature ~ Region + Year, data = data, FUN = mean)
print(mean_temp_by_region_year)
summary(mean_temp_by_region_year)

# How large is the re-aggregated dataset?
num_unique_values <- length(unique(mean_temp_by_region_year$AvgTemperature))
print(num_unique_values)

# Scatter plot of variables: year by temperature
plot(mean_temp_by_region_year$Year, mean_temp_by_region_year$AvgTemperature,
     xlab = "Year",
     ylab = "Mean Temperature (Fahrenheit)",
     main = "Temperature Variation Over Years",
     col = "blue",
     ylim = c(0, max(mean_temp_by_region_year$AvgTemperature) + 15),
     xlim = c(1990, max(mean_temp_by_region_year$Year) + 3))

# Histogram of temperature
median_temp <- median(mean_temp_by_region_year$AvgTemperature)
hist_plot <- hist(mean_temp_by_region_year$AvgTemperature,
     main = "Temperature Distribution",
     xlab = "Temperature (Fahrenheit)",
     ylab = "Frequency",
     xlim = c(30, 80), 
     ylim = c(0, 50),
     col = "blue")
abline(v = median_temp, col = "red")
text(hist_plot$mid, hist_plot$counts + 1, labels = hist_plot$counts, col = "black")

# Independent variable (x)
x_years <- mean_temp_by_region_year$Year
# Dependent variable (y)
y_temperature <- mean_temp_by_region_year$AvgTemperature

# cbind() function combines the vector 1 and years into a matrix. 
# The vector is added to represent the intercept in the linear regression equation.
X <- cbind(1, x_years) 
X

# Calculating B to estimate coefficients 
# Remembering that B = ((X'X)^−1) * X'y
B <- solve(t(X) %*% X) %*% t(X) %*% y_temperature

# Result B0 = value of y when x is 0 and B1 = slope coefficient 
B

# Calculating coefficients that the R function 
model <- lm(y_temperature ~ X)
model

# Scatter plot and then, the line coefficients B0 and B1
plot(mean_temp_by_region_year$Year, mean_temp_by_region_year$AvgTemperature,
     xlab = "Year",
     ylab = "Mean Temperature",
     main = "Temperature Variation Over Years",
     col = "blue",
     ylim = c(0, max(mean_temp_by_region_year$AvgTemperature) + 15 ),
     xlim = c(1990, max(mean_temp_by_region_year$Year) + 3 ))
abline(B[1], B[2], col = "red")
