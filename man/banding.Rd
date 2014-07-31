\name{banding}
\alias{banding}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{  A Banding Operator on A Matrix
}
\description{
Generate a banding operator with given dimention and tuning parameter. Multiplying 
it on a covariance matrix by componentwise product can provide a regularized estimator
with the banding method.
}
\usage{
banding(p, k = 1)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{p}{
the dimension of a covariance matrix.
}
  \item{k}{
the default value is 1. 
}
}

\value{
a \code{p*p} matrix.
}
\references{
Bickel, P and Levina, E, Regularized estimation of large covariance matrices,
Annals of Statistics, 36, 199-227 (2008).
}
\author{
Binhuan Wang
}

\examples{
p <- 5;
W <- banding(p,k=2) ;
W;
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ banding }
%\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
