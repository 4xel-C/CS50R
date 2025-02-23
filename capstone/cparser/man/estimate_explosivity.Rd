\name{estimate_explosivity}
\alias{estimate_explosivity}
\title{Estimate explosivity}
\description{Compute the O/C ratio to estimate the explosivity of the molecule.}
\usage{
    estimate_explosivity(formula = "CH3COOH")
}
\arguments{
\item{formula}{A string representation of a molecule formula}
}
\value{
A float value.
}
\examples{
    result <- estimate_explosivity("CH3COOH")
}