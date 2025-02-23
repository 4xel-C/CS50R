\name{parse_integer}
\alias{parse_integer}
\title{Parse Integer}
\description{parse string representation of integer values}
\usage{
    parse_integer(vector = c("1", "23 %", " 43."))
}
\arguments{
\item{vector}{A vector of a string representation of integers}
}
\value{
A vector of integer.
}
\examples{
    result <- parse_integer(c("1", "23 %", " 43."))
}