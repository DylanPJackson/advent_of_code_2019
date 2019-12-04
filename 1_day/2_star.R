# Read in data, store in data frame
df <- read.table("input.txt")

# Create function to calculate fuel sum for each module
loop_fuel <- function(input){
# Create sums list, which will hold all module fuel sums
sums <- list(1:100)
for (i in 1:100){
# Set each fuel sum initially to 0
sums[[1]][i] <- 0
# Set each module's fuel initially to the first fuel requirement 
module <- input[[1]][i]
module <- floor(module/3) - 2
# Calculate additional fuel requirements and add them to the sum
while(module >= 0){
sums[[1]][i] <- sums[[1]][i] + module
module <- floor(module/3) - 2
}
}
# Return the fuel sums
return (sum(Reduce("+", sums)))
}

loop_fuel(df)
