#QUESTION 1a
q1df=data.frame("ID"=c(1,2,3,4,5),"Name" = c("Peter","Amy","Ryan","Gary","Michelle"),"Salary"=c(623.30,515.20,611.00,729.00,843.25),row.names="ID")
#Q1b
q1df$Department=c("Finance","IT","HR","Marketing","Management")
#Q1c
q1dfe=q1df[c(1,3,5),c(2,3)]
#Q1d
q1dbp=q1df[c(1,4,5),c(2)]
barplot(q1dbp,names.arg=c("Peter","Gary","Michelle"),xlab="Name",ylab="Salary",main="Salary Graph")
#Q1e
pie(c(min(q1df$Salary),median(q1df$Salary),max(q1df$Salary)),labels=c("Lowest: Amy","Median: Peter","Highest: Michelle"),main="Salary Comparison")
#QUESTION 2
#if/else: since we didn't use an if/else statement explicitly (we used an "if" statement within a while loop) 
#I've modeled this one off of an if/else statement other groups used in their project 2 code
getrgb = function(color){
  if(color == "red"){
    return("(1,0,0)")
    } else if (color=="white"){
      return("(0,1,0)")
    } else if (color=="blue"){
      return("(0,0,1")
    } else{
      return("(0,0,0)")
  }
}
rgbex=getrgb("white")
#for loop: with adjusted numbers to fit the program
install.packages("TurtleGraphics")
library("TurtleGraphics")
turtle_init()
flagbase = function(x,y,color1){
  turtle_col(col=color1)
  turtle_up()
  turtle_goto(x,y)
  turtle_down()
  for(i in range(2)){
    turtle_forward(dist=19)
    turtle_right(angle=90)
    turtle_forward(dist=10)
    turtle_right(angle=90)
  }
}
flagbase(10,10,"black")