i=0
repeat{
  print(i)
  i=i+1
  if(i==3){
    next
  }
}
#write a program to print first 5 values from a vector  of 1:10
for (i in 1:10) {
  if(i>5){
    break
  }
  print(i)
}

for (i in 1:10) {
  if(i==5){
    next
  }
  print(i)
}