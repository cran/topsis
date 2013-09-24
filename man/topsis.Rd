\name{topsis}
\alias{topsis}
\title{TOPSIS method for multiple-criteria decision making (MCDM)}
\description{The Technique for Order of Preference by Similarity to Ideal Solution (TOPSIS) is a multiple-criteria decision making (MCDM) method.}
\usage{
topsis(decision = NULL, weights = NULL, impacts = NULL)
}
\arguments{
\item{decision}{A numeric matrix with m rows for m alternatives and n columns for n criterions.}
\item{weights}{A numeric vector with length equal to number of columns in decision matrix for weights of criterions.}
\item{impacts}{A character vector of "+" and "-" signs for the way that each criterion influences on the alternatives.}
}
\value{
A data frame including elements
\item{alt.row}{ Row number of alternatives in decision matrix. }
\item{score}{ TOPSIS score of alternatives. }
\item{rank}{ Rank of alternatives based on TOPSIS scores. }
}
\author{Mahmoud Mosalman Yazdi <m.mosalman@gmail.com>}
\references{
Yoon, K.P.; Hwang, C. (1995). _Multiple Attribute Decision Making: An Introduction_. California: SAGE publications.
}
\examples{
d <- matrix(rpois(12, 5), nrow = 4)
w <- c(1, 1, 2)
i <- c("+", "-", "+")
topsis(d, w, i)
}
\keyword{topsis}
