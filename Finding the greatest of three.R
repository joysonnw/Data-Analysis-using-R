#write a program to find the greatest of three numbers
{
  a = as.integer(readline("enter a:"))
  b = as.integer(readline("enter b:"))
  c = as.integer(readline("enter c:"))
}
if(a>b & a>c){
  print("a is the greatest")
}else if (b>a & b>c) {
  print("b is the greatest")
}else{
  print("c is the greatest")
}

