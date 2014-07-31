\name{L2.norm2}
\alias{L2.norm2}
\title{The Squared Operator Norm}
\description{Calculate the squared operator norm of a matrix}
\usage{
L2.norm2(A)
}
\arguments{
\item{A}{ a matrix }
}
\value{
a scalar of the squared operator norm.
}
\author{Binhuan Wang}
\examples{
A<-matrix(1:9,3,3);
L2.norm2(A);
}
\keyword{operator norm}