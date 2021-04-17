library(dplyr)
# import mechacar csv as datafram
mecha _car <- read.csv("MechaCar_mpg.csv",check.names = F, stringsAsFactors = F)

# perform mulitple linear regression on mechacar with mpg as dependant variable
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data = mecha_car)

# create statistical summary of linear regression model to get slope and p-values
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data = mecha_car))
