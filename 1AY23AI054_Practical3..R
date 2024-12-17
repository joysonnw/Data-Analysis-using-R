#Develop a program to create two 3 X 3 matrices A and B and perform the following operations 
#a) Transpose of the matrix 
#b) addition 
#c) subtraction 
#d) multiplication

a=matrix(1:9, nrow = 3, ncol = 3)
b=matrix(9:1, nrow = 3, ncol = 3)
cat("Matrix A:\n")
print(a)
cat("Matrix B:\n")
print(b)

#a
a_t=t(a)
b_t=t(b)
print("Transpose of Matrix A:\n")
print(a_t)
cat("Transpose of Matrix B:\n")
print(b_t)

#b
add=a+b
cat("Addition of A and B:\n")
print(add)

#c
sub=a-b
cat("Subtraction of B from A:\n")
print(sub)

#d
multi=a*b
cat("Multiplication of A and B:\n")
print(multi)
