library(dplyr)
# import mechacar csv as datafram
mecha_car <- read.csv("MechaCar_mpg.csv",check.names = F, stringsAsFactors = F)

# perform mulitple linear regression on mechacar with mpg as dependant variable
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data = mecha_car)

# create statistical summary of linear regression model to get slope and p-values
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data = mecha_car))

## deliverable 2
# import suspension coil data
sus_coil <- read.csv("Suspension_Coil.csv",check.names = F, stringsAsFactors = F)

# create total_summary of suspension coil data
total_summary <- sus_coil %>% summarize(Mean=mean(PSI),Median=median(PSI),Variance=var(PSI),SD=sd(PSI), .groups='keep')

# create summary of each lot
lot_summary <- sus_coil %>% group_by(Manufacturing_Lot) %>% summarize(Mean=mean(PSI),Median=median(PSI),Variance=var(PSI),SD=sd(PSI), .groups='keep')
