library(dplyr)
mechacar <- read.csv('Resources/MechaCar_mpg.csv', stringsAsFactors = F)
head(mechacar)

lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=mechacar)
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=mechacar)) 


suspension <- read.csv('Resources/Suspension_coil.csv', stringsAsFactors = F)
total_summary <- suspension %>% summarize(Mean=mean(PSI),Median=median(PSI),Variance=var(PSI),SD=sd(PSI), .groups = 'keep') # More complicated Summary table

lot_summary <- suspension %>% group_by(Manufacturing_Lot) %>% 
  summarize(Mean=mean(PSI),Median=median(PSI),Variance=var(PSI),SD=sd(PSI), .groups = 'keep') # More complicated Summary table


t.test(suspension$PSI)

subset1 <- subset(suspension, Manufacturing_Lot == "Lot1", PSI)
subset2 <- subset(suspension, Manufacturing_Lot == "Lot2", PSI)
subset3 <- subset(suspension, Manufacturing_Lot == "Lot3", PSI)

lot1 <- t.test(subset1, mu=1500)
lot2 <- t.test(subset2, mu=1500)
lot3 <- t.test(subset3, mu=1500)

show(lot1)
show(lot2)
show(lot3)