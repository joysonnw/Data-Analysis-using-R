#Using the built in dataset mtcars which is a popular dataset consisting of the design and fuel consumption patterns of 32 different automobiles. 
#The data was extracted from the 1974 Motor Trend US magazine, and comprises fuel consumption and 10 aspects of automobile design and performance for 32 automobiles (1973-74 models). 
#Format A data frame with 32 observations on 11 variables : [1] mpg Miles/(US) gallon, [2] cyl Number of cylinders [3] disp Displacement (cu.in.), [4] hp Gross horsepower [5] drat Rear axle ratio,[6] wt Weight (lb/1000) [7] qsec 1/4 mile time, [8] vs V/S, [9] am Transmission (0 = automatic, 1 = manual), [10] gear Number of forward gears, [11] carb Number of carburetors
#Develop R program, to solve the following:
#a) What is the total number of observations and variables in the dataset?
#b) Find the car with the largest hp and the least hp using suitable functions
#c) Plot histogram / density for each variable and determine whether continuous variables are normally distributed or not. If not, what is their skewness?
#d) What is the average difference of gross horse power(hp) between automobiles with 3 and 4 number of cylinders(cyl)? Also determine the difference in their standard deviations.
#e) Which pair of variables has the highest Pearson correlation?

mtcars

#a
print("The total numbers of observations and variables in the dataset:")
dim(mtcars)

#b
print("Car with largest hp")
max(mtcars$hp)
print("Cars with least hp")
min(mtcars$hp)

#c
library(e1071)
par(mfrow = c(3, 4))

for (var in names(mtcars)) {
  if (is.numeric(mtcars[[var]])) {
    hist(mtcars[[var]], main = paste("Histogram of", var), xlab = var, col = "lightblue")
    plot(density(mtcars[[var]]), main = paste("Density of", var), col = "red", lwd = 2)
    skew_val <- skewness(mtcars[[var]])
    cat(var, "skewness:", skew_val, "\n")
  }
}

#d
cars_3_cyl=mtcars[mtcars$cyl == 3, ]
cars_4_cyl=mtcars[mtcars$cyl == 4, ]

avg_hp_3_cyl=mean(cars_3_cyl$hp)
avg_hp_4_cyl=mean(cars_4_cyl$hp)

sd_hp_3_cyl=sd(cars_3_cyl$hp)
sd_hp_4_cyl=sd(cars_4_cyl$hp)

avg_hp_diff=avg_hp_4_cyl - avg_hp_3_cyl
sd_hp_diff=sd_hp_4_cyl - sd_hp_3_cyl

cat("Average horsepower difference:", avg_hp_diff, "\n")
cat("Difference in standard deviations:", sd_hp_diff, "\n")

#e
cor_matrix=cor(mtcars)
cor_matrix[lower.tri(cor_matrix)]=NA
max_corr_val=max(cor_matrix, na.rm = TRUE)
max_corr_pair=which(cor_matrix == max_corr_val, arr.ind = TRUE)

cat("Maximum correlation value:", max_corr_val, "\n")
cat("Variables with the highest correlation:\n")
print(names(mtcars)[max_corr_pair])
