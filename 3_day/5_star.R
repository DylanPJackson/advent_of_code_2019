# Read in the data
input <- read.csv("input.csv", header=FALSE, sep=",")

# Custom function to turn str vector into an int
strvectoint <- function(str_vec){
    len <- length(str_vec)
    new_int <- 0
    mult <- 1
    # Adds each element, treating each as appropriate factor of 10
    for(i in len:1){
        new_int <- new_int + (mult*strtoi(str_vec[i]))
        mult <- mult * 10
    }
    return(new_int)
}

# Update position of a wire with given direction and distance, assuming
# update is from raw input
update_wire <- function(wire, update){
    # Split the raw update into a string vector
    split_update <- strsplit(format(update), "")
    # Store direction letter as variable
    direction <- split_update[[1]][1]
    # Use custom function to turn rest of update distance from str vec to int
    distance <- strvectoint(split_update[[1]][2:length(split_update[[1]])])
    # Depending on direction, update wire's x / y appropriately
    if(direction == "R"){
        wire[1] <- wire[1] + distance
    }else if(direction == "L"){
        wire[1] <- wire[1] - distance
    }else if(direction == "U"){
        wire[2] <- wire[2] + distance
    }else if(direction == "D"){
        wire[2] <- wire[2] - distance
    }
    return(wire)
}

# Given original and new coordinates of two wires and the current shortest
# intersection distance, determine if the wires intersect at a closer point
# to the origin than the current shortest. If so, return it, otherwise return 0
detect_intersect <- function(og_1, new_1, og_2, new_2, dist){
    # Get difference of x and y values of original positions
    og_diff <- c(og_1[1] - og_2[1], og_1[2] - og_2[2])
    # Get differences of x and y values of new positions
    new_diff <- c(new_1[1] - new_2[1], new_1[2] - new_2[2])
    # Calculate products of diffs of x and y for new and old positions 
    prods <- c(og_diff[1] * new_diff[1], og_diff[2] * new_diff[2])
    # If both products are negative, that means that the sign of the
    # differences was inverted. Therefore, we know that the wires have crossed
    if(prods[1] < 0 && prods[2] < 0){
        # Intersection point is always at original x value of second wire, 
        # original y value of first wire. Interesting!
        temp_dist <- sum(abs(og_2[1]), abs(og_1[2])) 
        if(temp_dist < dist){
            return(temp_dist)
        }else{
            return(0)
        }
    }else{
        return(0)
    }
}
