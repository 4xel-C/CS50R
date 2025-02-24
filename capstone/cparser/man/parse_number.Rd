\name{parse_number}
\alias{parse_number}
\title{Parse Number}
\description{parse string representation of int or float values}
\usage{
    parse_number(vector = c("1,9", "23.4 %", " 04,9"))
}
\arguments{
\item{vector}{A vector of a string representation of numbers}
}
\value{
A vector of floats.
}
\examples{
    result <- parse_number(c("1,9", "23.4 %", " 04,9"))
}