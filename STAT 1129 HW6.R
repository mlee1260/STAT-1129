#QUESTION 1
matrix1 = matrix(c(7,2,9,4,12,13),nrow=2,ncol=3)
matrix2 = matrix(c(1,2,3,7,8,9,12,13,14,19,20,21),nrow=3,ncol=4)
matrix3=matrix1%*%matrix2
matrix3
#QUESTION 2
#import post data (as csv, b/c JSON and R don't really mesh well)
fb = read.csv("your_posts_1.csv",header=TRUE)
#rename columns
names(fb)[names(fb)=="timestamp"]<-"Date"
names(fb)[names(fb)=="data.0.post"]<-"Post"
#get rid of unnecessary columns
keep = c("Date","Post")
fb = fb[keep]
#set index as Date
row.names(fb)=(fb$Date)
#grouping by month (approximately)
fb$Date=signif(fb$Date,digits=4)
posts = count(fb, vars = fb$Date)
#prepping to graph
names(posts)[names(posts)=='vars']<-"Date"
names(posts)[names(posts)=='n']<-"Count"
#graphing!
barplot(posts$Count,xlab="Date",ylab="Count",main="Facebook Posts", names.arg=posts$Date, col='blue',xaxt="n")
axis(1, at=c(1,15,29,43,57,74),labels = c("06/2018","11/2019","05/2020","11/2020","05/2021","11/2021"))
#results in a decent bar graph representing an approximate month-to-month posting trend