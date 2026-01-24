# ***************************group Bar Chart************************* 

colors=c("green", "orange", "brown")
months<-c("March","April", "May","June","July")
regions <-c("East","West","North")

values <-matrix(c(2,13,8,19,5,2,6,9,15,14,3,21,15,16,1),nrow=3,ncol=5,byrow=TRUE)

barplot(values,main="Total Revanue", names.arg=months,xlab="Month" , ylab="Revanue", col = colors, beside = TRUE)

legend("topleft",regions,cex=0.7,fill=colors)


#********************************Linear Regression *******************************************
#*