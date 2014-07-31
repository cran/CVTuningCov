\name{soft.thresholding}
\alias{soft.thresholding}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Soft-thresholding Operator on A Covariance Matrix
}
\description{
Apply soft-thresholding operator on an input covariance matrix with a tuning parameter.
}
\usage{
soft.thresholding(Sigma, c = 0.5)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{Sigma}{
a covariance matrix with dimension \code{p*p}.
}
  \item{c}{
the default value is 0.5.
}
}

\value{
a \code{p*p} covariance matrix after soft-thresholding operation.
}
\references{
Rothman, A, Levina, E and Zhu, J, A new approach to Cholesky-based covariance
regularization in high dimensions, Biometrika, 97, 539-550 (2010).
}
\author{
Binhuan Wang
}

\examples{
p <- 5;
Sigma <- AR1(p, rho=0.6);
soft.Sigma<-soft.thresholding(Sigma,c=0.5);
soft.Sigma;
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ thresholding }
%\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
