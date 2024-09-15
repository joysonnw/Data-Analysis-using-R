#create a factor which contains the survey results for a product launch with good,average and bad reviews. take the survey of 10 people and print the choices shared by them

res<-c("good","good","bad","average","good","average","bad","bad","bad","average")
f<-factor(res, levels=c("good","average","bad"),ordered=TRUE)
print(f)
