#Types of Graph
#Line Chart 
#Scatter Chart
# pie Chart
#Bar Chart

plot(5,100)
#******************************************************line chart()**************************************

plot(1:10,type = "l")
#*****************************************************color formatting***********************************
plot(1:10,type = "o" , col="red")


#**********************************************************scatter plot ******************************************
x <- c(1,10,21,30,20,50,60,70)
y <- c(10,20,30,40,50,60,50,45)

plot(x,y, main = "Result",xlab = "temp",ylab = "age")

#**********************************************************scatter plot with multiple Aspects ******************************************

x1 <-c(2,3,4,5,6,7,8,9,10)
y1 <-c(12,13,14,15,516,75,80,9,110)
x2 <-c(2,3,4,5,6,7,8,9,10)
y2 <-c(12,13,14,15,16,70,98,90,10)


plot(x1,y1, col='red', main = 'result')
points(x2,y2, col='green')

# ****************************************************piechart*************************************

x <- c(10,20,30,40)
mylabel <- c("pulse","Apple","protein","Papaya")

pie(x,label=mylabel , main="Diets")
colors <- c("red","green","blue","yellow")

pie(x,label=mylabel , main="Diets", col=colors)

legend("bottomright", colors, fill = colors)


#**********************************Bar chart ****************************************
state_name <-c("UP","Delhi", "Haryana", "Punjab")
temperature <-c(10,20,30,40)

barplot(temperature,names.arg = state_name, col = "red" , density = 20)
barplot(temperature,names.arg = state_name, col = "red" , density = 20, width=c(1,2,3,4),horiz = TRUE)



#******************************************************************************

library(datasets)
data(mtcars)
head(mtcars)
summary(mtcars)
boxplot(mtcars$mpg, col = "orange")
hist(mtcars$mpg, col = "green",breaks=45)

#Bar Plotting

barplot(table(mtcars$carb), col = "orange")

#Box Plot
#Two Dimensional Plotting
boxplot(mpg~gear, data=mtcars, col='blue')

#Histogram 
hist(subset(mtcars,cyl==4) $mpg, col="green" )
hist(subset(mtcars, cyl==8) $mpg, col = "green")

#scatter plot
with(mtcars,plot(mpg,qsec))



