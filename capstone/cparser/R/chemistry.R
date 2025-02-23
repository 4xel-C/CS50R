library(tidyverse)

# Loading elements tibble giving the mass of each atoms
elements <- read_csv("data/elements.csv") |>
    select(Symbol, AtomicMass)

estimate_explosivity <- function(formula) {
    atoms <- cparser::parse_formula(formula)

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


calculate_molw <- function(formula) {
    
    atoms <- cparser::parse_formula(formula)

    if (all(is.na(atoms))){
        warning("Invalid formula")
        return(NA)
    }

    molw <- 0

    for (name in names(atoms)) {

        if (!all(c(names(atoms)) %in% elements$Symbol)){
            warning("Invalid formula")
            return(NA)
        }

        molw <- molw + (elements$AtomicMass[elements$Symbol == c(name)] * atoms[[name]])
    }

    return(molw)
}
