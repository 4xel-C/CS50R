\name{parse_float}
\alias{parse_float}
\title{Parse Float}
\description{parse string representation of float values}
\usage{
    parse_float(vector = c("1,9", "23.4 %", " 04,9"))
}
\arguments{
\item{vector}{A vector of a string representation of floats}
}
\value{
A vector of floats.
}
\examples{
    result <- parse_float(c("1,9", "23.4 %", " 04,9"))
}