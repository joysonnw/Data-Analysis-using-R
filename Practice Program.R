#write a r program to create a list containing vector, factor and an array update the last element in the list
vec<- c(1, 2, 3, 4, 5)
fac<- factor(c())
arr <- array(1:12, dim = c(3, 4))
list <- list(vector =vec, factor = fac, array = arr)
print("Original List:")
print(list)
list[[3]] <- array(13:24, dim = c(3, 4))
print("Updated List:")
print(list)
