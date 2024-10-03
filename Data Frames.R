#data frames
#data frame is a generic object that is used to store tabular data, data frame can also be thought as a matrix where each columns as different data types
?data.frame
#create a data frame for the universities which contains, uid,uname, strength, result and location

uid=c(1,2,3,4,NA)
uname=c("AIT","RVCE","MSRIT","UVCE","CMRIT")
strength=c(1000,1200,1100,1500,950)
result=c(98,99,96,94,96)
location=c("Soladevanahalli","RR Nagar","MG Road","Jayanagar", "JP Nagar")
uni_data=data.frame("ID"=uid,"Name"=uname,strength,result,location)
print(uni_data)

str(uni_data)
summary(uni_data)
