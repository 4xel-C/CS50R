parse_number <- function(vec){
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

