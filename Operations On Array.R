#check how to remove an element in the array
#remove a sequence of elements using another array
#update the all the odd element to even

vec <- c(1, 2, 3, 4, 5)
vec <- vec[vec != 3]
print(vec)
vec1 <- c(2, 4)
vec2 <- setdiff(vec, vec1)
print(vec2)
vec <- ifelse(vec%% 2!= 0,vec+1,vec)
print(vec)

