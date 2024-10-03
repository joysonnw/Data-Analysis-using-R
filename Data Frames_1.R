#create a data frame using two different vectors - used id and user name
userid = c(1111, 2222, 3333, 4444)
username = c("ganesh","ramesh","suresh","mukesh")
user = data.frame("ID"= userid, "Name"=username)
print(user)
str(user)
summary(user)

#extract the user name from the data frame
user$Name

#add new column user_location to the data frame
user$user_location=c("RR nagar", "RT nagar","Nagpur","Manipur")
user

#access the first column using index position, second column using name, third column $
user[1]
user[["Name"]]
user$user_location

dim(user)
#add a new row in the data frame 
user=rbind(user,c(5555,"nagesh","JP nagar"))
user
#insert a column company using cbind function
user = cbind(user, "company" = c("ibm","tcs","jk","wipro","hg"))
user
#remove the first row and column from the data frame 
user=user[-c(1),-c(1)]
user
length(user)
nrow(user)
ncol(user)
