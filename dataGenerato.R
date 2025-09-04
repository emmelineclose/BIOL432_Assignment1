## dataGenerato.R
## Emmeline Close (20324093)

# Organism vector contains 5 Latin species names

Organism<-c("Homo sapiens", "Craseonycteris thonglongyai", 
           "Equus ferus", "Melopsittacus undulatus",
           "Proteus anguinus")

# A vector with a set of 100 species names, 
# randomly selected from Organism vector (which is overwritten)

Organism<-sample(Organism, size=100, replace=TRUE)
Organism

# Vector of 100 limb widths
# All are positive and none are zero to make sense
# Uses log normal distribution

Limb_width<-rpois(n=100, 10) 
Limb_width

# Vector of 100 limb lengths

Limb_length<-rpois(n=100, 10)
Limb_length

# Contains 3 observers

Observer<-c("Jane Doe", "John Doe", "A. N. Other")

# Randomizes the 3 observers into 100 instances
# Overwrites original Observer vector

Observer<-sample(Observer, size=100, replace=TRUE)
Observer

# Combines all vectors into a single data frame

Measurements<-data.frame(Organism, Limb_width, Limb_length, 
                         Observer)

print(Measurements)

# Export to a csv file using relative pathing

write.csv(Measurements, file="./measurements.csv", row.names=FALSE)
