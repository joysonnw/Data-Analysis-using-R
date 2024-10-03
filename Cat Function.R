?cat
a=5
b=3
d=a%%b
c=a%/%b
cat(d,c, file="division.txt",sep=",")
getwd()
help(cat)
cat(5<4, file ="compare.txt", append=TRUE)
cat(5>4, file ="compare.txt", append=TRUE)
