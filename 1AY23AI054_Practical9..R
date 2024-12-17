#Design a data frame in R for storing about 20 employee details. 
#Create a CSV file named “input.csv” that defines all the required information about the employee such as id, name, salary, start_date, dept. 
#Import into R and do the following analysis.
#a) Find the total number rows & columns
#b) Find the maximum salary
#c) Retrieve the details of the employee with maximum salary
#d) Retrieve all the employees working in the IT Department.
#e) Retrieve the employees in the IT Department whose salary is greater than 20000 and write these details into another file “output.csv”


id=c(1:20)
name=c("Ramesh","Sumesh","Mukesh","Rajesh","Paresh","Umesh","Kamesh","Dinesh","Mahesh","Suresh"
       ,"Ganesh","Nilesh","Hitesh","Vishesh","Atresh","Prakash","Tinesh","Ritesh","Vinesh","Lokesh")
salary=c(10000,20000,30000,12000,15000,34000,23000,21000,40000,35000,
         12000,33000,45000,50000,25000,11000,65000,76000,43000,32000)
start_date=c("2023-10-12","2022-2-10","2024-2-1","2022-12,21","2020-2-3","2023-4-15","2024-2-17","2023-7,12","2024-7-12","2023-9-10",
             "2019-4-19","2024-6-14","2023-7-19","2024-9-12","2022-10-23","2023-11-25","2022-12-30","2022-10-23","2019-12-1","2023-11-27")
dept=c("IT","Banking","Finance","Teaching","Agricultural","IT","IT","Finance","Banking","Agricultural",
       "HR","Teaching","HR","Finance","Teaching","Agricultural","Finance","IT","HR","Teaching")
empdetails=data.frame(id,name,salary,start_date,dept)
empdetails
write.csv(empdetails,"input.csv",row.names = FALSE)
emp_data=read.csv("input.csv")

#a
nrow(emp_data)
ncol(emp_data)

#b
max_salary=max(emp_data$salary)
max_salary

#c 
max_salary_emp=emp_data[emp_data$salary==max_salary,]
max_salary_emp

#d
it_emp=emp_data[emp_data$dept=="IT",]
it_emp

#e
it_emp_sal=emp_data[emp_data$dept=="IT" & emp_data$salary >20000,]
it_emp_sal
write.csv(it_emp_sal,"output.csv",row.names = FALSE)


