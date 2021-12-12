#setting working directory and loading data 
setwd("~/Desktop/Crim250Final")
dat.Columbia <- read.csv('jacobdkaplan.com_school_count_Columbia University in the City of New York.csv')


#dimensions of the dataset 
dim(dat.Columbia)
summary(dat.Columbia$crimes_total_total)
summary(dat.Columbia$crimes_total_sex_offenses_total)

#generate scatterplot for total crimes

plot(dat.Columbia$year, dat.Columbia$crimes_total_total, type = "b", main = "Scatterplot of Total Number of Reported Crimes at Columbia from 2001-2017",
     xlab = "Year", ylab = "Number of offenses reported to police", cex.axis = 0.75)

axis(1, at=seq(2001,2017,1), cex.axis=0.75)

#generate scatterplot for total sexual offenses

plot(dat.Columbia$year, dat.Columbia$crimes_total_sex_offenses_total,  type = "b", main = "Scatterplot of Total Number of Reported Sex Crimes at Columbia from 2001-2017",
     xlab = "Year", ylab = "Number of Offenses Reported to Police", cex.axis = 0.75)

axis(1, at=seq(2001,2017,1), cex.axis=0.75)

#scatterplot for total on campus sex offenses 

plot(dat.Columbia$year, dat.Columbia$crimes_on_campus_sex_offenses_total,  type = "b", main = "Scatterplot of On Campus Total Number of Reported Sex Crimes at Columbia from 2001-2017",
     xlab = "Year", ylab = "Number of Offenses Reported to Police", cex.axis = 0.75)

axis(1, at=seq(2001,2017,1), cex.axis=0.75)

#off campus scatterplot

plot(dat.Columbia$year, dat.Columbia$crimes_noncampus_sex_offenses_total,  type = "b", main = "Scatterplot of Off Campus Total Number of Reported Sex Crimes at Columbia from 2001-2017",
     xlab = "Year", ylab = "Number of Offenses Reported to Police", cex.axis = 0.75)

axis(1, at=seq(2001,2017,1), cex.axis=0.75)

#generate subset of the data 

vars<- c("year","crimes_total_aggravated_assault", "crimes_total_arson",
         "crimes_total_motor_vehicle_theft","crimes_total_murder_non_negligent_manslaughter", 
         "crimes_total_negligent_manslaughter", "crimes_total_sex_offenses_total" )
newdata <- dat.Columbia[,vars]

#renaming variables for the table 

names(newdata)[names(newdata)=="crimes_total_aggravated_assault"] <- "Aggrevated Assault"
names(newdata)[names(newdata)=="crimes_total_arson"] <- "Arson"
names(newdata)[names(newdata)=="crimes_total_motor_vehicle_theft"] <- "Motor Vehicle Theft"
names(newdata)[names(newdata)=="crimes_total_murder_non_negligent_manslaughter"] <- "Non-Negligent Manslaughter"
names(newdata)[names(newdata)=="crimes_total_negligent_manslaughter"] <- "Negligent Manslaughter"
names(newdata)[names(newdata)=="crimes_total_sex_offenses_total"] <- "Sex Offenses"

#making the table











