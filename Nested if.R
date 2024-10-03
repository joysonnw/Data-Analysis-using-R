#take the input from the user and check if it is even +ve, even -ve, zero, odd +ve and odd -ve
a<- as.integer(readline("enter the number:"))
{
if(a>0){
  if(a%%2==0){
    print("even +ve")
  }else{
    print("odd +ve")
  }
}else if(a<0){
  if(a%%2==0){
    print("even -ve")
  }else{
    print("odd -ve")
  }
}else{
  print("it is a zero")
}
}

?switch
