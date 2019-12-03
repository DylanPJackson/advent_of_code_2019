## Read in the data, store in data frame 
df <- read.table("input.txt")

## Calculate total fuel required for flight, according to given equation
total_fuel <- sum(floor(df/3) - 2)

## Display total_fuel to command line
total_fuel
