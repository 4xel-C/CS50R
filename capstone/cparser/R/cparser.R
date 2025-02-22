parse_integer <- function(vec){
    parsed <- suppressWarnings(as.integer(gsub("[^0-9]", "", vec)))
}


# -----------------------------------------------------------------To implement!!!
# parse_float <- function(vec){
#     parsed <- sapply(vec, function(x) {

#     })
#     match <- regexpr("\\d+(?:[.,]\\d+)?", vec)
#     parsed <- regmatches(vec, match)

#     if (length(parsed) == 0) {
#         return(NA)
#     }
    
#     # transform the extraction into a float after transforming the comma into a point
#     parsed <- as.numeric(sub(",", ".", parsed))

#     parsed <- ifelse(vec != )

#     return(parsed)
# }

check_valid_formula <- function(formula){
    pattern <- "^([A-Z][a-z]*[1-9]*)+$"

    if (grepl(pattern, formula)) {
        return(TRUE)
    } else {
        return(FALSE)
    }
}

# Return a named list of each atom mapped with their number
parse_formula <- function(formula) {
    if (!check_valid_formula){
        warning("x is not a valid formula")
        return(NA)
    }

    # get all the occurencies of each atoms
    matches <- gregexpr("([A-Z][a-z]*)([0-9]*)", formula)

    # Extract separatly all atoms and their number
    elements <- regmatches(formula, matches)[[1]]

    # Initialize the named list "atoms"
    atoms <- c()

    for (element in elements) {

        # Get the symbol
        symbole <- gsub("[0-9]", "", element)
        
        # Get the number
        quantity <- as.integer(gsub("[^0-9]", "", element))

        if (is.na(quantity) || quantity == 0) {
            quantity <- 1 
        }
        
        # Add the quantities
        atomes[symbole] <- atomes[symbole] + quantity
    }

    return(atoms)
}

compare_formula <- function(formula1, formula2){
    atoms1 <- parse_formula(formula1)
    atoms2 <- parse_formula(formula2)

    if (atoms1 == atoms2) {
        return(TRUE)
    }
    return(FALSE)
}

is_peroxydes <- function(smiles){
    grepl("OO", smiles)
}

estimate_explosivity <- function(formula) {
    atoms <- parse_formula(formula)

    # get the number of Oxygen
    O <- atoms["O"]

    # get the number of Carbons
    C <- atoms["C"]

    return(ifelse(C > 0, O / C, NA))
}






match <- regexpr("\\d+(?:[.,]\\d+)?", c("xcwv", "xcwv", "xwcv", "3"))
parsed <- regmatches(c("xcwv", "xcwv", "xwcv", "3"), match)
as.numeric(parsed)


match <- regexpr("\\d+(?:[.,]\\d+)?", "test")
regmatches("test", match)

# transform the extraction into a float after transforming the comma into a point
parsed <- as.numeric(sub(",", ".", parsed))
