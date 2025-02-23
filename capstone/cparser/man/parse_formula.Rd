\name{parse_formula}
\alias{parse_formula}
\title{Parse molecular formula}
\description{Give the count of each element of a molecular formula}
\usage{
    parse_formula(formula = "CH4COOH")
}
\arguments{
\item{formula}{A string representation of a chemical formula.}
}
\value{
A named vector of the count of each element.
}
\examples{
    parse_formula("CH4COOH")
}