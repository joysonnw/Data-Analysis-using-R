add1<-function(a)
{
  a=10
  b=20
  print(a+b)
}
add1()
add1(5)
add1(5,10)


#write a program to create a function which checks if the number passed during the calling statement even or odd
evenodd <-function(a=25)
{
  if(a%%2==0){
    return("even")
  }else{
    return("odd")
  }
}
evenodd()
evenodd(10)


#write a program to find the area of rectangle by demonstrating the concepts of default value concept
area<-function(l=10,b=20)
{
  return(l*b)
}
area()
area(5,20)

#find the factorial of a number using loop
n=4
i=1
res=1
while(i<=n){
  res=res*i
  i=i+1
}
print(res)

#write a program to check if the number is divisible by 5 using default arguments
div<-function(a)
{
  if(a%%5==0){
    print("it is divisible")
  }else{
    print("it is not divisible")
  }
}
div(27)


names(methods:::.BasicFunsList)

#create two vectors of numbers of equal length and find the sum of both the vectors individually using sum function
v1=c(1,2,3,4,5)
v2=c(6,7,8,9,10)
sum(v1)
sum(v2)
max(v1)
min(v1)
mean(v1)
median(v1)
print(v1+v2)
print(v1+10)

#create two vectors v1 with 4 elements and v2 with 2 elements, perform all the arithmetic operations on these two vectors
v1=c(4,6,10,14)
v2=c(2,8)
v1+v2
v1-v2
v1*v2

c(1+2,4-1,3,7+3)==3

#what is the difference between package and library

search()
install.packages("tidyverse")
library(tidyverse)
installed.packages()

#write a program to print to Fibonacci series of a number entered by th user using looping construct