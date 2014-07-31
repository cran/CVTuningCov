\name{F.norm2}
\alias{F.norm2}
\title{The Squared Frobenius Norm}
\description{Calculate the squared Frobenius norm of a matrix}
\usage{
F.norm2(A)
}
\arguments{
\item{A}{ a matrix }
}
\value{
a scalar of the squared Frobenius norm.
}
\author{Binhuan Wang}
\examples{
A<-matrix(1:9,3,3);
F.norm2(A);
}
\keyword{Frobenius norm}