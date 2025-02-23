\name{compare_formula}
\alias{compare_formula}
\title{Compare formula}
\description{Compare two chemical formulas}
\usage{
    compare_formula(formula1 = "CH4COOH", formula2 = "C2H5O2")
}
\arguments{
\item{formula1}{A string representation of a chemical formula.}
\item{formula2}{A string representation of a chemical formula.}
}
\value{
A boolean value confirming if both formulas are identical or not.
}
\examples{
    compare_formula("CH4COOH", "C2H5O2")
}