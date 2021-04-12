#Deliverable 1
#------------------------

# import library package
library(dplyr)

#read MechaCar_mpg.csv file as dataframe
MechaCar_mpg_df <- read.csv(file='MechaCar_mpg.csv',check.names=F,stringsAsFactors=F)

#create multiple linear regression pass all six variable
multiple_lm_model <- lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=MechaCar_mpg_df)

#generate summary statistics
summary(multiple_lm_model)

#------------------------

#Deliverable 2
#------------------------

#import and read in the Suspension_Coil.csv file as a table.
suspension_coil <- read.csv(file='Suspension_Coil.csv',check.names=F,stringsAsFactors=F)

#summarize() function to get the mean, median, variance, and standard deviation of the suspension coil¡¯s PSI column.
total_summary <- suspension_coil %>% summarize(Mean=mean(PSI),Median=median(PSI),Variance=var(PSI),SD=sd(PSI))
total_summary

#using the group_by() and the summarize() functions to group each manufacturing lot by the mean, median, variance, and standard deviation of the suspension coil¡¯s PSI column.
lot_summary <- suspension_coil %>% group_by(Manufacturing_Lot) %>% summarize(Mean=mean(PSI),Median=median(PSI),Variance=var(PSI),SD=sd(PSI))
lot_summary

#------------------------

#Deliverable 3
#------------------------

# use T-test to determine if the PSI across all manufacturing lots is statistically different from the population mean of 1,500 pounds per square inch.
t.test(suspension_coil$PSI,mu=1500)

#using the t.test() function and its subset() argument to determine if the PSI for each manufacturing lot is statistically different from the population mean of 1,500 pounds per square inch.
# t.test() for Lot1     
t.test(subset(suspension_coil$PSI,suspension_coil$Manufacturing_Lot=='Lot1'),mu=1500)
# t.test() for Lot2
t.test(subset(suspension_coil$PSI,suspension_coil$Manufacturing_Lot=="Lot2"),mu = 1500)
# t.test() for Lot3
t.test(subset(suspension_coil$PSI,suspension_coil$Manufacturing_Lot=="Lot3"),mu = 1500)

