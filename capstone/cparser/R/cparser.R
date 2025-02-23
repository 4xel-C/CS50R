parse_integer <- function(vec){
    parsed <- suppressWarnings(as.integer(gsub("[^0-9]", "", vec)))
}


parse_float <- function(vec){
    parsed <- sapply(vec, function(x) {

        # RegEx for floats
        match <- regexpr("\\d+(?:[.,]\\d+)?", x)
        num <- regmatches(x, match)

        if (length(num) == 0) {
            return(NA)
        }

        return(num)
    })
   
    # transform the extraction into a float after transforming the comma into a point
    parsed <- as.numeric(sub(",", ".", parsed))


    return(parsed)
}

check_valid_formula <- function(formula){
    pattern <- "^([A-Z][a-z]?[1-9]*)+$"

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
parse_formula("H2O")


compare_formula <- function(formula1, formula2){
    atoms1 <- parse_formula(formula1)
    atoms2 <- parse_formula(formula2)

    if (all(is.na(atoms1)) || all(is.na(atoms2))) {
        return(FALSE)
    }

    if (all(atoms1 == atoms2)) {
        return(TRUE)
    }
    return(FALSE)
}


estimate_explosivity <- function(formula) {
    atoms <- parse_formula(formula)

    if(atoms["O"] == 0 || atoms["C"] == 0 || is.na(atoms["O"]) || is.na(atoms["C"])){
        warning("There is no carbon nor oxygen")
        return(NA)
    }

    # get the number of Oxygen
    O <- atoms[["O"]]

    # get the number of Carbons
    C <- atoms[["C"]]


    return(O / C)
}