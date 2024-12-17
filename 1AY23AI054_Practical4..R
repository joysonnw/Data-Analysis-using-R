#Develop a program to find the factorial of given number using recursive function calls.

fact = function(n){
 if(n==0){
   print(1)
 }else if(n==1){
  return(n) 
 }else{
   return(n*fact(n-1))
 }
}
{
n<-as.integer(readline("enter the number:"))
result=fact(n)
cat("The factorial of a number",n,"is:",result)
}
