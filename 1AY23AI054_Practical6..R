#The built-in data set mammals contain data on body weight versus brain weight. Develop R commands to:
#a) Find the Pearson and Spearman correlation coefficients. Are they similar?
#b) Plot the data using the plot command.
#c) Plot the logarithm (log) of each variable and see if that makes a difference.

library(MASS)
data("mammals")
a=cor(mammals$body,mammals$brain,method="pearson")
a
b=cor(mammals$body,mammals$brain,method = "spearman")
b

#a
if(abs(a-b)<0.5){
  print("They are similar.")
}else{
  print("They are not similar.")
}

#b
plot(mammals$body,mammals$brain,xlab = "Body",ylab = "Brain",main = "Mammals")

#c
plot(log(mammals$body),log(mammals$brain),xlab = "Body",ylab = "Brain",main = "Mammals")

