
# managing potential error using if conditions
average1 <- function(x) {
    if (!is.numeric(x)) {
        return(NA)
    }
    sum(x) / length(x)
}

# could also use the function "message" to inform the user
average2 <- function(x) {
    if (!is.numeric(x)) {
        message("x is not numeric, returning NA!")
        return(NA)
    }
    sum(x) / length(x)
}

# function "warning" more adapted to handle a problem
average3 <- function(x) {
    if (!is.numeric(x)) {
        warning("x is not numeric, returning NA!")
        return(NA)
    }
    sum(x) / length(x)
}

# Function "stop" will stop the program if an error is detected
# An NA value will be ignored in a vector, so it passs the is.numeric checks
average <- function(x) {
    if (any(is.na(x))) {
        warning("'x' contains one or more 'NA' values!")
        return(NA)
    }
    if (!is.numeric(x)) {
        stop("x is not numeric, the program stopped!")
    }
    sum(x) / length(x)
}



# test <- c(NA, 10, 5, 6)
# average(test)
