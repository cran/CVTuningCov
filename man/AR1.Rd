\name{AR1}
\alias{AR1}
\title{Covariance Matrix with AR(1) Structure}
\description{Generate Covariance Matrix with an Autoregression (1) Structrue}
\usage{
AR1(p,rho=0.5)
}
\arguments{
\item{p}{ the dimension of a covariance matrix. }
\item{rho}{the default value is 0.5. }
}
\value{
a \code{p*p} matrix.
}
\author{Binhuan Wang}
\examples{
p <- 5;
Sigma <- AR1(p, rho=0.9);
Sigma;
}
\keyword{autoregression}