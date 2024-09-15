#check the functioning of append function,create a 1-D array and modify that array using append function
?append
vec=c(1,2,3,4,5)
vec=append(vec,c(8,9),after=5)
vec

arr=(seq(1:9))
arr=append(arr,38,5)
arr
arr[arr>5]
arr[arr>5&arr<20]
arr[arr!=9]
arr[arr=(arr%%2!=0)]
