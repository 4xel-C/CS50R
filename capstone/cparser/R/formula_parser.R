check_valid_formula <- function(formula){
    pattern <- "^([A-Z][a-z]?[1-9]*)+$"

    # Get rid of the trailling white spaces
    formula <- trimws(formula)

    if (grepl(pattern, formula)) {
        return(TRUE)
    } else {
        return(FALSE)
    }
}


# Return a named list of each atom mapped with their number
parse_formula <- function(formula) {
    if (!check_valid_formula(formula)){
        warning(paste(formula, "is not a valid formula"))
        return(NA)
    }

    # get all the occurencies of each atoms
    matches <- gregexpr("([A-Z][a-z]?)([0-9]*)", formula)
    
    # Extract separatly all atoms and their number
    elements <- regmatches(formula, matches)[[1]]
    
    # Initialize the named list "atoms"
    atoms <- c()

    for (element in elements) {

        # Get the symbol
        symbol <- gsub("[0-9]", "", element)
     
        # Get the number
        quantity <- as.integer(gsub("[^0-9]", "", element))
        
        if (is.na(quantity) || quantity == 0) {
            quantity <- 1
        }
        
        # Add the quantities
        if (!is.null(atoms[symbol]) && !is.na(atoms[symbol])) {
            atoms[symbol] <- atoms[symbol] + quantity
        } else {
            atoms[symbol] <- quantity
        }
    }
    return(atoms)
}


compare_formula <- function(formula1, formula2){
    atoms1 <- cparser::parse_formula(formula1)
    atoms2 <- cparser::parse_formula(formula2)

    if (all(is.na(atoms1)) || all(is.na(atoms2))) {
        return(FALSE)
    }

    if (all(atoms1 == atoms2)) {
        return(TRUE)
    }
    return(FALSE)
}
