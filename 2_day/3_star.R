## Read in the data
input <- read.csv("input.csv", header=FALSE, sep=",")

## Create function to parse intcode
intcode <- function(input){
    # Iterate through eac element in vector
    for(i in 1:129){
        # Only check every four elements for an opcode
        if(i %% 4 == 1){
            # Determine which opcode it is
            op <- input[[i]]
            if(op == 1){
                # Add 1 to each index because R vectors start at 1
                p_1 <- input[[i+1]] + 1
                p_2 <- input[[i+2]] + 1
                index <- input[[i+3]] + 1
                # Calculate result with given indices and store
                result <- input[[p_1]] + input[[p_2]]
                input[[index]] <- result
            } else if(op == 2){
                # Add 1 to each index because R vectors start at 1
                p_1 <- input[[i+1]] + 1
                p_2 <- input[[i+2]] + 1
                index <- input[[i+3]] + 1
                # Calculate result with given indices and store
                result <- input[[p_1]] * input[[p_2]]
                input[[index]] <- result
            } else if(op == 99){
                # Return the entire vector when terminate
                return(input)
            } else {
                return ("Broken probably")
            }
        }
    }    
}

intcode(input)[[1]]
