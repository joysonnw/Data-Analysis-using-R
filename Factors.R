#factor
#factor are implemented to categorize the data and store it on multiple levels, they can be stored as integers with a corresponding label to every unique integer
vec=c("M","F","M","M","F")
f=factor(vec)
f
f1=factor(vec, levels=c("M","F","T"), labels=c("Male", "Female","Transgender"), ordered=TRUE)
f1
is.factor(f1)
f1[3]
f[2]="T"
f
