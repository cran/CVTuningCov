\name{hard.thresholding}
\alias{hard.thresholding}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Hard-thresholding Operator on A Covariance Matrix
}
\description{
Apply hard-thresholding operator on an input covariance matrix with a tuning parameter.
}
\usage{
hard.thresholding(Sigma, c = 0.5)
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
a \code{p*p} covariance matrix after hard-thresholding operation.
}
\references{
Bickel, P and Levina, E, Covariance regularization by thresholding, Annals of
Statistics, 36, 2577-2604 (2008).
}
\author{
Binhuan Wang
}

\examples{
p <- 5;
Sigma <- AR1(p, rho=0.6);
hard.Sigma<-hard.thresholding(Sigma,c=0.5);
hard.Sigma;
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ thresholding}
%\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
