vec1=array(c(1,2,3,4,5,6))
vec2=array(c(10,11,13,14))
arr=array(c(vec1,vec2),dim=c(3,2))
arr
dim(arr)

row_names=c("r1","r3")
column_names=c("c1","c2","c3")
mat_names=c("Mat1","Mat2")
arr=array(c(vec1,vec2),dim=c(2,3,2),dimnames=list(row_names,column_names,mat_names))
arr
