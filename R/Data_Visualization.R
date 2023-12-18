#Pie chart visualization

#pie(x,labels,radius,main,col,clockwise)
x<-c(123,134,156,178,190,174,198)
labels<-c("India","Japan","Nepal","Russia","Germany","USA","London")
pie_percent<- round(100*x/sum(x), 1)
#png(file="wise.png")
colors<-c("black","brown","gray","pink","purple","red","azure")
pie(x,labels,main="Way to Go Ayayaashi",col=colors)
legend("topright",labels,cex=0.9,fill = colors, )
#saveing file
#dev.off()



#pie(x,labels,radius,main,col,clockwise)
x<-c(123,134,156,178,190,174,198)
labels<-c("India","Japan","Nepal","Russia","Germany","USA","London")
pie_percent<- round(100*x/sum(x), 1)
#png(file="wise.png")
colors<-c("black","brown","gray","pink","purple","red","azure")
pie(x,labels=pie_percent,main="Way to Go Ayayaashi",col=colors)
legend("topright",labels,cex=0.9,fill = colors, )
#saveing file
#dev.off()


#3D Pie chart
library(plotrix)
#pie(x,labels,radius,main,col,clockwise)
x<-c(123,134,156,178,190,174,198)
labels<-c("India","Japan","Nepal","Russia","Germany","USA","London")
pie_percent<- round(100*x/sum(x), 1)
#png(file="wise_3D.png")
colors<-c("black","brown","gray","pink","purple","red","azure")
pie3D(x,labels=pie_percent,main="Way to Go Ayayaashi",col=colors,explode=0.1)
legend("topright",labels,cex=0.8,fill = colors, )
#saveing file
#dev.off()





#R Bar chart
#barplot(h,x,y,main,names.arg,col)

# Creating the data for Bar chart  
H<- c(12,35,54,3,41)  
# Giving the chart file a name  
#png(file = "bar_chart.png")  
# Plotting the bar chart   
barplot(H)  
# Saving the file  
#dev.off()



# Creating the data for Bar chart  
H <- c(12,35,54,3,41) #vector  
M<- c("Feb","Mar","Apr","May","Jun") #names.arg  

# Giving the chart file a name  
#png(file = "bar_properties.png")  

# Plotting the bar chart   
barplot(H,names.arg=M,xlab="Month",ylab="Revenue",col="green",  
        main="Revenue Bar chart",border="red")  
# Saving the file  
#dev.off()  

install.packages("RColorBrewer")
library(RColorBrewer)

library(RColorBrewer)  
months <- c("Jan","Feb","Mar","Apr","May")  
regions <- c("West","North","South")  
# Creating the matrix of the values.  
Values <- matrix(c(21,32,33,14,95,46,67,78,39,11,22,23,94,15,16), nrow = 3, ncol = 5, byrow = TRUE)  
# Giving the chart file a name  
#png(file = "stacked_chart.png")  
# Creating the bar chart  
barplot(Values, main = "Total Revenue", names.arg = months, xlab = "Month", ylab = "Revenue", col =c("cadetblue3","deeppink2","goldenrod1"))  
# Adding the legend to the chart  
legend("topleft", regions, cex = 1.3, fill = c("cadetblue3","deeppink2","goldenrod1"))  
# Saving the file  
#dev.off()  


#wise
Gulambi<-c("India","Japan","Nepal","Russia")
Money<-matrix(c(216,382,393,149,957,486,670,788,359,171,226,235,944,153,161), nrow = 3, ncol = 5, byrow = TRUE) 
Gulambi_Type<-c("Gulambi","Kamli","Remdy")
barplot(Money,main="Ayaashi",names.arg=Gulambi,xlab="Gulambi",ylab="Amount",col<-c("pink","red","black"))
legend("topleft",Gulambi_Type,cex=1.4,fill<-c("pink","red","black"))



#BoxPlot

#boxplot(x, data, notch, varwidth, names, main)  

# Giving a name to the chart file.  
png(file = "boxplot.png")  
# Plotting the chart.  
boxplot(mpg ~ cyl, data = mtcars, xlab = "Quantity of Cylinders",  
        ylab = "Miles Per Gallon", main = "R Boxplot Example")  

# Save the file.  
dev.off()  


# Giving a name to our chart.  
png(file = "boxplot_using_notch.png")  
# Plotting the chart.  
boxplot(mpg ~ cyl, data = mtcars,   
        xlab = "Quantity of Cylinders",  
        ylab = "Miles Per Gallon",   
        main = "Boxplot Example",  
        notch = TRUE,   
        varwidth = TRUE,   
        col = c("green","yellow","red"),  
        names = c("High","Medium","Low")  
)  
# Saving the file.  
dev.off()  




# Loading the vioplot package   
library(vioplot)  
# Giving a name to our chart.  
png(file = "vioplot.png")  
#Creating data for vioplot function  
x1 <- mtcars$mpg[mtcars$cyl==4]  
x2 <- mtcars$mpg[mtcars$cyl==6]  
x3 <- mtcars$mpg[mtcars$cyl==8]  
#Creating vioplot function  
vioplot(x1, x2, x3, names=c("4 cyl", "6 cyl", "8 cyl"),  
        col="green")  
#Setting title   
title("Violin plot example")  
# Saving the file.  
dev.off()  



# Loading aplpack package  
library(aplpack)  
# Giving a name to our chart.  
png(file = "bagplot.png")  
#Creating bagplot function  
attach(mtcars)  
bagplot(wt,mpg, xlab="Car Weight", ylab="Miles Per Gallon",  
        main="2D Boxplot Extension")  
# Saving the file.  
dev.off()  



#R Histogram
hist(v,main,xlab,ylab,xlim,ylim,breaks,col,border)  


# Creating data for the graph.  
v <-  c(12,24,16,38,21,13,55,17,39,10,60)  

# Giving a name to the chart file.  
png(file = "histogram_chart.png")  

# Creating the histogram.  
hist(v,xlab = "Weight",ylab="Frequency",col = "green",border = "red")
hist(v,xlab = "Weight",ylab="Frequency",col = "green",border = "red",xlim = c(0,40), ylim = c(0,3), breaks = 5)  
m<-hist(v)
# Saving the file.  
dev.off()  



# Creating data for the graph.  
v <-  c(12,24,16,38,21,13,55,17,39,10,60,120,40,70,90)  
# Giving a name to the chart file.  
png(file = "histogram_return.png")  

# Creating the histogram.  
m<-hist(v,xlab = "Weight",ylab="Frequency",col = "darkmagenta",border = "pink", breaks = 5)  
#Setting labels  
text(m$mids,m$counts,labels=m$counts, adj=c(0.5, -0.5))  
hist(v,xlab = "Weight",ylab="Frequency",xlim=c(50,100),col = "darkmagenta",border = "pink", breaks=c(10,55,60,70,75,80,100,120))  
# Saving the file.  
dev.off()  



#R line graph
plot(v,type,col,xlab,ylab)  

# Creating the data for the chart.  
v <- c(13,22,28,7,31)  
# Giving a name to the chart file.  
png(file = "line_graph.jpg")  
# Plotting the bar chart.   
plot(v,type = "o")
plot(v,type = "o",col="green",xlab="Month",ylab="Temperature")  
# Saving the file.  
dev.off()  



# Creating the data for the chart.  
v <- c(13,22,28,7,31)  
w <- c(11,13,32,6,35)  
x <- c(12,22,15,34,35)  
# Giving a name to the chart file.  
png(file = "multi_line_graph.jpg")  
# Plotting the bar chart.   
plot(v,type = "o",col="green",xlab="Month",ylab="Temperature")  
lines(w, type = "o", col = "red")  
lines(x, type = "o", col = "blue")  
# Saving the file.  
dev.off()  




install.packages("ggplot2")
library(ggplot2)


#Creating data for the graph  
data_frame<- data.frame(dose=c("D0.5", "D1", "D2"),  
                        len=c(4.2, 10, 29.5))  
head(data_frame)  
png(file = "multi_line_graph2.jpg")  
# Basic line plot with points  
ggplot(data=data_frame, aes(x=dose, y=len, group=1)) +geom_line()+geom_point()  
# Change the line type  
ggplot(data=df, aes(x=dose, y=len, group=1)) +geom_line(linetype = "dashed")+geom_point()  
# Change the color  
ggplot(data=df, aes(x=dose, y=len, group=1)) +geom_line(color="red")+geom_point()  
dev.off()  



#R Scatterplots

plot(x, y, main, xlab, ylab, xlim, ylim, axes)  

#Fetching two columns from mtcars  
data <-mtcars[,c('wt','mpg')]  
# Giving a name to the chart file.  
png(file = "scatterplot.png")  
# Plotting the chart for cars with weight between 2.5 to 5 and mileage between 15 and 30.  
plot(x = data$wt,y = data$mpg, xlab = "Weight", ylab = "Milage", xlim = c(2.5,5), ylim = c(15,30), main = "Weight v/sMilage")  
# Saving the file.  
dev.off()  


#USING GGPLOT2
#Loading ggplot2 package  
library(ggplot2)  
# Giving a name to the chart file.  
png(file = "scatterplot_ggplot.png")  
# Plotting the chart using ggplot() and geom_point() functions.  
ggplot(mtcars, aes(x = drat, y = mpg)) +geom_point()  
# Saving the file.  
dev.off()  


# Giving a name to the chart file.  
png(file = "scatterplot1.png")  
# Plotting the chart using ggplot() and geom_point() functions.  
#The aes() function inside the geom_point() function controls the color of the group.  
ggplot(mtcars, aes(x = drat, y = mpg)) +  
  geom_point(aes(color=factor(gear)))  
# Saving the file.  
dev.off()  


dfCrime = read_csv(“Crime_Data.csv”, col_names = TRUE)
getwd()
setwd("/home/blackheart/Documents/DATA SCIENCE/R_PROGRAMING/")
getwd()
data<-read.csv("Data.csv")
data<-read.csv("Data.csv",col_names<-TRUE)
print(summary(data))
ggplot(data<-data)+geom_col(mapping<-aes(x<-name,y<-salary))
 
#filter
getwd()
data<-read.csv("Data.csv")
data_frame<-data.frame(data)
print(data_frame)
print(summary(data_frame))
filter(data,salary>=300)
filter(data,name %in% data)
print(filtering)
?filter       


install.packages("tidyverse")

library(tidyverse)

?tidyverse
View(data)
??Data
?datasets
library(help="datasets")
??studyarea.csv
??CountryPopulation.csv
getwd()

install.packages("Data")

dfPop = read.csv("world_bank_pop.csv")

?datasets
??world_bank_pop

install.packages("tidyr")
library(tidyr)
install.packages("dplyr")
install.packages("read.table")
setwd("/home/blackheart/Documents/DATA SCIENCE/R_PROGRAMING/")

getwd()
library(writexl)
df = read.table("StudyArea.csv", header = TRUE)
data.table::Sty
install.packages("writexl")
write_xlsx(CO2,path<-"/home/blackheart/Documents/DATA SCIENCE/R_PROGRAMING/")

library(ggplot2)
ggplot(data<-trees,mapping <-aes(x<-trees$Girth,y<-trees$Volume))+
   geom_point()+geom_smooth(method = "lm")+labs(title ="Data Visualization",x="Girth",y="Volume")

ggplot(trees,aes(trees$Girth,trees$Volume))+geom_line()+labs(title <-"Data Visualization",x<-"Girth",y<-"Volume")

plot1<-ggplot(data<-trees,mapping <-aes(x<-trees$Girth,y<-trees$Volume))+
  geom_point()+geom_smooth(method = "lm")+labs(title ="Data Visualization",x="Girth",y="Volume")

plot1+ggsave("plot1.tiff")

ggplot(data<-diamonds)+geom_bar(mapping = aes(x<-cut))
ggplot(data = diamonds) +
  stat_count(mapping = aes(x = cut),show.legend = T)

?geom_bar
ggplot(data = diamonds) +
  stat_count(mapping = aes(x = cut))
#here y is not define so geom_bar automatically create count range on y axis so let change 
install.packages("tibble")
library(tibble)
demo <- tribble(
  ~a,
  ~b,
  "bar_1", 20,
  "bar_2", 30,
  "bar_3", 40
)
ggplot(data = demo) +
  geom_bar(
    mapping = aes(x = a, y = b), stat = "identity"
  )
?tibble

library(ggplot2)
ggplot(data = diamonds) +
  geom_bar(mapping = aes(x = cut, color = cut))
ggplot(data = diamonds) +
ggplot(data = diamonds) +geom_bar(mapping = aes(x = cut, fill =clarity))+labs(title="Graph Visualization")
?fill
ggplot(data = diamonds) +
  geom_bar(mapping = aes(x = cut, fill = clarity))
ggplot(data = diamonds) +
  geom_bar(mapping = aes(x = cut, fill = density()))

ggplot(
  data = diamonds,
  mapping = aes(x = cut, fill = clarity)
) +
  geom_bar(alpha = 1/5, position = "identity")
ggplot(
  data = diamonds,
  mapping = aes(x = cut, color = clarity)
) +
  geom_bar(fill = NA, position = "identity")
nrow(diamonds)

ggplot(data = diamonds) +
  geom_bar(
    mapping = aes(x = cut, fill = clarity),
    position = "fill"
  )

?position_dodge
??position

ggplot(data = diamonds) +
  geom_bar(
    mapping = aes(x = cut, fill = clarity),
    position = "dodge"
  )

ggplot(data = mpg) +
  geom_point(
    mapping = aes(x = displ, y = hwy),
    position = "jitter"
  )
 #Data Transformation with dplyr

library("nycflights13")
library(tidyverse)
install.packages("flights")
library(nycflights13)
install.packages("nycflights13")

flights
filter(flights,month==1,day==1)
jan1<-filter(flights,month==1,day==1)
dec25<-filter(flights,month==12,day==25)
sep28<-filter(flights,month==9 | month==7)
print(sep28)#not get required data
sep28_act<-filter(flights,month %in% c(7,8))

#same as using de-morgon law !(x & y)=!x | !y and !(x | y)=!x & !y
filter(flights, !(arr_delay > 120 | dep_delay > 120))
filter(flights, arr_delay <= 120, dep_delay <= 120)
  
#Arrange rows with arrange
arrange(flights,year,month,day)
arrange(flights,desc(arr_delay))#desending order column

#select cloumn with select
#select cloumn by name
select(flights,year,month,day)
# Select all columns between year and day (inclusive)
select(flights, year:day)
# Select all columns except those from year to day (inclusive)
select(flights, -(year:day))
rename(flights,tail_num=tailnum)
select(flights, time_hour, air_time, everything())


#mutate add new variable 
mutate(flights_sml,
       gain = arr_delay - dep_delay,
       hours = air_time / 60,
       gain_per_hour = gain / hours
)
#if only keep new varaible in dataset
transmute(flights,
          gain = arr_delay - dep_delay,
          hours = air_time / 60,
          gain_per_hour = gain / hours
)

#data hour and minute form with modular arithmetic operator
transmute(flights,
          dep_time,
          hour = dep_time %/% 100,
          minute = dep_time %% 100
)

summarize(flights, delay = mean(dep_delay, na.rm = TRUE))
by_day <- group_by(flights, year, month, day)
summarize(by_day, delay = mean(dep_delay, na.rm = TRUE))
#pipe
delays <- flights %>%
  group_by(dest) %>%
  summarize(
    count = n(),
    dist = mean(distance, na.rm = TRUE),
    delay = mean(arr_delay, na.rm = TRUE)
  ) %>%
  filter(count > 20, dest != "HNL")


#working with axis
data("iris")
p <- ggplot(iris, aes(Sepal.Length, Petal.Length, colour=Species)) + geom_point()
p
p+annotate("text",x=5,y=6,label="Text Testing")
# add repeat
  p + annotate("text", x = 4:6, y = 5:7, label = "text")
p+ annotate("rect",xmin=5,xmax=7,ymin=4,ymax=6,alpha=0.5)#highlight area 

# segment
p + annotate("segment", x = 5, xend = 7, y = 4, yend = 5, colour = "black")

plat<-PlantGrowth
nrow(plat)
View(plat)
pg<-ggplot(plat,aes(group,weight))+geom_point()
pg

install.packages("ggthemes") # Install 
library(ggthemes) # Loads

#working with legend
p
p+theme(legend.position = "none")
p+theme(legend.title = element_blank())
#Change the legend title and text font styles
# legend title
 p + theme(legend.title = element_text(colour = "blue", size = 10, + face = "bold"))
# legend labels
  p + theme(legend.text = element_text(colour = "red", size = 8, + face = "bold"))

  ggplot(iris, aes(Sepal.Length, Petal.Length, colour=Species)) +
    geom_point(shape=1) +
    geom_smooth(method=lm, se=FALSE)#se<-standard deviation
  mpg
ggplot(mpg,aes(cyl,hwy))+
  geom_point()+
  geom_jitter(aes(colour=class))#Jitter plots include special effects with
#which scattered plots can be depicted
  
 #margin plots
install.packages("ggExtra")
library(ggExtra)  
g <- ggplot(mpg, aes(cty, hwy)) +
      geom_count() +
      geom_smooth(method="lm", se=F)
#relationship betwwen variable
ggMarginal(g,type="histogram",fill="transparent")
ggMarginal(g,type="boxplot",fill="transparent")
ggMarginal(g,type="density",fill="transparent")
ggMarginal(g,type="violin",fill="transparent")
ggMarginal(g,type="densigram",fill="transparent")

# A historgram count plot
ggplot(data=mpg, aes(x=hwy)) +
     geom_histogram( col="red",
                              fill="green",
                              alpha = .2,
                              binwidth = 3)

#bubble chart
mpg
ggplot(mpg, aes(x=cty, y=hwy, size = pop)) +geom_point(alpha=0.7)

#diverging chart
alp<-data.frame(group<-LETTERS[1:26],value<-rnorm(26))
ggplot(alp,aes(x=group,y=value))+
  geom_bar(stat = "identity",
           show.legend = F)+
  xlab("Group")+ylab("Value")
#recorder the value
ggplot(alp,aes(x=reorder(group,value),y=value))+
  geom_bar(stat = "identity",
           show.legend = F)+
  xlab("Group")+ylab("Value")
#verticaly diverging bar chart
ggplot(alp,aes(x=reorder(group,value),y=value))+
  geom_bar(stat = "identity",
           show.legend = F)+
  xlab("Group")+ylab("Value")+coord_flip()
#flipping the name of categorial variable
ggplot(alp,aes(x=group,y=value))+
  geom_bar(stat = "identity",
           show.legend = F)+
  xlab("Group")+ylab("Value")+
  theme(axis.text.x=element_text(angle = 90,hjust = 1,vjust = 0.5))

#adding text each of bar
ggplot(alp, aes(x = reorder(group, value), y = value)) +
  geom_bar(stat = "identity",
           show.legend = FALSE) +
  geom_text(aes(label = round(value, 1),
                angle = 90,
                hjust = ifelse(value < 0, 1.25, -0.25),
                vjust = 0.5),
            size = 3) +
  xlab("Group") +
  ylab("Value") + 
  scale_y_continuous(limits = c(min(alp$value) - 0.2,
                                max(alp$value) + 0.2))


#working on theme
install.packages("ggthemes")
library(ggthemes)
?ggthemes()
ggplot(mpg, aes(year, displ, color=factor(manufacturer)))+
  geom_point()+ggtitle("This plot looks a lot different from the default")+
   theme_economist()+scale_colour_economist()

?theme_economist()
theme_set(theme_grey(base_size = 30))
ggplot(mpg, aes(x=year, y=class))+geom_point(color="red")

#Multi panel plots
par(mfrow=c(1,2))#set the ploting area 1*2 array
Temperature <- airquality$Temp
 Ozone <- airquality$Ozone
 par(mfrow=c(2,2)) #if you want col wise use mfcol(2,2,)
 hist(Temperature)
 boxplot(Temperature, horizontal=TRUE)
 hist(Ozone)
 boxplot(Ozone, horizontal=TRUE)

 #col wise
 par(mfrow=c(1,2))#set the ploting area 1*2 array
Temperature <- airquality$Temp
 Ozone <- airquality$Ozone
 par(mfcol=c(2,2)) #if you want col wise use mfcol(2,2,)
 hist(Temperature)
 boxplot(Temperature, horizontal=TRUE)
 hist(Ozone)
 boxplot(Ozone, horizontal=TRUE)

#multiple plots
 #1.density plot
 p<- ggplot(mpg,aes(cty))+
   geom_density(aes(fill=factor(cyl)),alpha=.8)
p
p+labs(title="Density Plot",
       subtitle = 'City Mileage Grouped By Number of cylinders',
       caption = "Source : mpg",
       x="City Mileage",
       fill="#Cylinders")

#2. Box Plot
  g<-ggplot(mpg,aes(class,cty))+
    geom_boxplot(varwidth = T,fill="black")
  g
g+labs(title = "A Box Plot Example",
       subtitle = "Mileage By Class",
       caption = "MPG Datasets",
       x="Class",
       y="Mileage")


#3. Dot plots
h<-ggplot(mpg,aes(manufacturer,cty))+
  geom_boxplot()+
  theme(axis.text.x=element_text(angle=69,vjust = 0.6))
h
h+geom_dotplot(binaxis = "y",
               stackdir = 'center',
               dotsize = .5)
?geom_dotplot

#4. Violin Plots
p <- ggplot(mpg, aes(class, cty))
 p + geom_violin()

#background colors change
 ggplot(iris, aes(Sepal.Length, Species))+geom_point(color="firebrick")+
    theme(panel.background = element_rect(fill = 'grey75'))

ggplot(iris, aes(Sepal.Length, Species))+geom_point(color="firebrick")+
       theme(panel.background = element_rect(fill = 'grey75'),
                  panel.grid.major = element_line(colour = "orange", size=2),
                  panel.grid.minor = element_line(colour = "blue"))

ggplot(iris, aes(Sepal.Length, Species))+geom_point(color="firebrick")+
    theme(plot.background = element_rect(fill = 'pink'))


theme_set(theme_minimal())
ggplot(data = economics, aes(x = date, y = pop))+
   geom_line(color = "#00AFBB", size = 2)

# Plot a subset of the data
 ss <- subset(economics, date > as.Date("2006-1-1"))
 ggplot(data = ss, aes(x = date, y = pop)) +
   geom_line(color = "#FC4E07", size = 2)

 library(tidyr)
  library(dplyr)

ss <- economics %>%
   +    select(date, psavert, uempmed) %>%
   +    gather(key = "variable", value = "value", -date)


 head(df, 3)
ss
sss<-
ggplot(ss, aes(x = pce, y = pop)) +
      geom_line(aes(color = unemploy), size = 1) +
       scale_color_manual(values = c("#00AFBB", "#E7B800")) +
       theme_minimal()

# Create data
var1 <- seq(1,8)
var2 <- c(0,1,4,1,8,7,5,4)
var3 <- c(7,8,4,2,1,2,0,1)

# Area chart with 2 groups
p <- plot(x = var1, y = var2, type="scatter", mode="markers", fill = "tozeroy")
p <- add_trace(p, x = var1, y = var3, type="scatter", mode="markers", fill = "tonexty")
p


df <- data.frame(date = as.Date("2021-01-01") - 0:99,
                 sales = runif(100, 10, 500) + seq(50, 149)^2)
p <- ggplot(df, aes(x=date, y=sales)) +
  geom_line()


library(tidyr)
library(dplyr)
df <- economics %>%
      select(date, psavert, uempmed) %>%
      gather(key = "variable", value = "value", -date)
head(df,3)
ggplot(df, aes(x = date, y = value)) +
      geom_line(aes(color = variable), size = 1) +
      scale_color_manual(values = c("#00AFBB", "#E7B800")) +
      theme_minimal()

ggplot(df, aes(x = date, y = value)) +
      geom_line(aes(color = variable), size = 1) +
      scale_color_manual(values = c("#00AFBB", "#E7B800")) +
      theme(panel.background = element_rect(fill = "black"),
                            plot.background =element_rect(fill="grey" ))


ggplot(df, aes(x = date, y = value)) +
      geom_line(aes(color = variable), size = 1) +
      scale_color_manual(values = c("blue", "red")) +
      theme(panel.background = element_rect(fill = "black"),
                            plot.background =element_rect(fill="grey" ))
 ??pannel.background

#Deleting point outside of the range
library(ggplot2)
g <- ggplot(midwest, aes(x=area, y=poptotal)) + geom_point() + geom_smooth(method="lm")  # set se=FALSE to turnoff confidence bands
g
# Delete the points outside the limits
g + xlim(c(0, 0.1)) + ylim(c(0, 1000000))   # deletes points
 # g + xlim(0, 0.1) + ylim(0, 1000000)   # deletes points

# zooming poiint without deleting point outside
library(ggplot2)
g <- ggplot(midwest, aes(x=area, y=poptotal)) + geom_point() + geom_smooth(method="lm")  # set se=FALSE to turnoff confidence bands

# Zoom in without deleting the points outside the limits. 
# As a result, the line of best fit is the same as the original plot.
g1 <- g + coord_cartesian(xlim=c(0,0.1), ylim=c(0, 1000000))  # zooms in
plot(g1)
 
##Change title and axis labels
g <- ggplot(midwest, aes(x=area, y=poptotal)) + 
  geom_point() +
  geom_smooth(method="lm")  # set se=FALSE to turnoff confidence bands

g1 <- g + coord_cartesian(xlim=c(0,0.1), ylim=c(0, 1000000))  # zooms in

# Add Title and Labels
g1 + labs(title="Area Vs Population",
          subtitle="From midwest dataset",
          y="Population", x="Area",
          caption="Midwest Demographics")

# or
g1 + ggtitle("Area Vs Population",
             subtitle="From midwest dataset") +
  xlab("Area") + 
  ylab("Population")


##How to Change the Color and Size of Points
library(ggplot2)
gg<-ggplot(midwest, aes(x=area, y=poptotal)) + 
  geom_point(col="steelblue", size=3) +   # Set static color and size for points
  geom_smooth(method="lm", col="firebrick") +  # change the color of line
  coord_cartesian(xlim=c(0, 0.1), ylim=c(0, 1000000)) + 
  labs(title="Area Vs Population",
       subtitle="From midwest dataset",
       y="Population", x="Area",
       caption="Midwest Demographics")

##how to chanmge colour reflect acording to categories
gg<-ggplot(midwest, aes(x=area, y=poptotal)) + 
  geom_point(aes(col=state), size=3) +   # Set static color and size for points
  geom_smooth(method="lm", col="firebrick") +  # change the color of line
  coord_cartesian(xlim=c(0, 0.1), ylim=c(0, 1000000)) + 
  labs(title="Area Vs Population",
       subtitle="From midwest dataset",
       y="Population", x="Area",
       caption="Midwest Demographics")
gg
#change color palette
gg+scale_color_brewer(palette = "Set1")
gg+scale_color_brewer(palette = "Dark2")
?scale_color_brewer
library(RColorBrewer)
head(brewer.pal.info)

#customize text axis and lebel
# Base Plot
gg <- ggplot(midwest, aes(x=area, y=poptotal)) + 
  geom_point(aes(col=state), size=3) +  # Set color to vary based on state categories.
  geom_smooth(method="lm", col="firebrick", size=2) + 
  coord_cartesian(xlim=c(0, 0.1), ylim=c(0, 1000000)) + 
  labs(title="Area Vs Population", subtitle="From midwest dataset", y="Population", x="Area", caption="Midwest Demographics")

# Change Axis Texts
gg + scale_x_continuous(breaks=seq(0, 0.1, 0.01),
    labels = sprintf("%1.2f%%", seq(0, 0.1, 0.01))) + 
  scale_y_continuous(breaks=seq(0, 1000000, 200000), 
          labels = function(x){paste0(x/1000, 'K')})
gg


##how to customize entire theme
# Base plot
gg <- ggplot(midwest, aes(x=area, y=poptotal)) + 
  geom_point(aes(col=state), size=3) +  # Set color to vary based on state categories.
  geom_smooth(method="lm", col="firebrick", size=2) + 
  coord_cartesian(xlim=c(0, 0.1), ylim=c(0, 1000000)) + 
  labs(title="Area Vs Population", subtitle="From midwest dataset", y="Population", x="Area", caption="Midwest Demographics")

gg <- gg + scale_x_continuous(breaks=seq(0, 0.1, 0.01))

# method 1: Using theme_set()
theme_set(theme_classic())  # not run
gg

# method 2: Adding theme Layer itself.
gg + theme_bw() + labs(subtitle="BW Theme")
gg + theme_classic() + labs(subtitle="Classic Theme")

library(ggplot2)
h <- ggplot(diamonds, aes(carat, price))
h+geom_bin2d(binwidth=c(0.25,500))
?geom_bin2d()
h+geom_density_2d()
h+geom_hex()
theme_dark()

##Visualizing Distributions
library(ggplot2)
ggplot(data <- diamonds)+geom_bar(mapping = aes(x=cut))
#A Variable is conttinous if it take any 
#infinite set of  ordered value. Eg <- number,date
diamonds %>%
  count(cut)
#to examine data is continous or not use histogram
ggplot(data <- diamonds)+
  geom_histogram(mapping = aes(x <- carat),
                 bandwidth <-0.5 )
library(tidyverse)
library()
smaller <- diamonds %>%
  filter(carat < 3)
ggplot(data = smaller, mapping = aes(x = carat,fill=cut,color="red")) +
  geom_histogram(binwidth = 0.1)+theme_dark()
#for better understanding use this \
ggplot(data = smaller, mapping = aes(x = carat, color = cut)) +
  geom_freqpoly(binwidth = 0.1)+theme_dark()

##Unusual values && Missing Values
ggplot(diamonds) +
  geom_histogram(mapping = aes(x = y), binwidth = 0.5)
#to see unusual value use zoom the out range data 
ggplot(diamonds) +
  geom_histogram(mapping = aes(x = y), binwidth = 0.5) +
  coord_cartesian(ylim = c(0, 50)) #using zoom for xlim() and ylim()

#Missing values
diamonds2 <- diamonds %>%
  filter(between(y, 3, 20))
#replacing unusual value
diamonds2 <- diamonds %>%
  mutate(y = ifelse(y < 3 | y > 20, NA, y))
ggplot(data = diamonds2, mapping = aes(x = x, y = y)) +
  geom_point()
#to superpass warning use na.rm=T
ggplot(data = diamonds2, mapping = aes(x = x, y = y)) +
  geom_point(na.rm = TRUE)










































































































