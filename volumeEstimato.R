## volumeEstimato.R
## Emmeline Close (20324093)

# Import dplyr package
library(dplyr)

# Read measurements.csv

Measurements<-read.csv("./measurements.csv")

# Multiply length x 1/2 of width (radius) x pi
# for the volume of an organism's leg

Measurements<- Measurements %>% #Replaces the original
  mutate(Volume=(Limb_width/2)^2*Limb_length*pi)
Measurements

# Export to a csv file using relative pathing

write.csv(Measurements, file="./measurements.csv", row.names=FALSE)

