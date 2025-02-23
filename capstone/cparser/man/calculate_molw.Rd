\name{calculate_molw}
\alias{calculate_molw}
\title{Calculate molecular weight}
\description{Calculate the molecular of a molecule based on it's formula.}
\usage{
    calculate_molw(formula = "CH3COOH")
}
\arguments{
\item{formula}{A string representation of a molecule formula}
}
\value{
The molecular weight expressed as a float value.
}
\examples{
    result <- calculate_molw("CH3COOH")
}