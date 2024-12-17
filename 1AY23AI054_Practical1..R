#Demonstrate the steps for installation of R and R Studio. Perform the following:
#a) Assign different type of values to variables and display the type of variable. Assign different types
#such as Double, Integer, Logical, Complex and Character and understand the difference between
#each data type.
#b) Demonstrate Arithmetic and Logical Operations with simple examples.
#c) Demonstrate generation of sequences and creation of vectors.
#d) Demonstrate Creation of Matrices
#e) Demonstrate the Creation of Matrices from Vectors using Binding Function.
#f) Demonstrate element extraction from vectors, matrices and arrays

#a)
a=5L
class(a)
typeof(a)
a1=5
class(a1)
typeof(a1)
b=5.5
class(b)
typeof(b)
c=TRUE
class(c)
typeof(c)
d=5i+5
class(d)
typeof(d)
e="Hello"
class(e)
typeof(e)

#b)
a=5
b=5
a+b
a-b
a*b
a/b
a%%b
x=TRUE
y=FALSE
x&y
x|y
!x
!y
x&&y
x||y

#c)
a=seq(1,10)
a
vec=c(1:10)
vec

#d)
m=matrix(1:9,nrow=3,ncol=3,byrow = TRUE)
m

#e)
vec1=c(1,2,3,4,5)
vec2=c(6,7,8,9,10)
mat=rbind(vec1,vec2)
mat
mat=cbind(vec1,vec2)
mat

#f)
vec=c(10,20,30,40,50)
vec[2]
mat=matrix(1:9,nrow=3,ncol=3)
mat
mat[2,1]
arr=array(1:9,dim=c(3,3))
arr
arr[3,3]

