% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/int.R
\name{zt}
\alias{zt}
\title{Extended function for z-transformation, filling non-finite values and changes column names at will}
\usage{
zt(x, fillfinite = 0, addz = T, saveattr = T)
}
\arguments{
\item{x}{A data matrix for which the columns are to be standardized}

\item{fillfinite}{The value to fill non-finite values with, by default zero.}

\item{addz}{Boolean indicating whether letter 'z' should be appended to the variable names to indicate the standardization}

\item{saveattr}{Boolean for if an 'attr' should be attached to the standardized vector, similar to how the R default function 'scale' conserves the centering and scaling values}
}
\value{
z-score standardized values (zero mean and unit variation), with non-finite values imputed by zero by default.
}
\description{
An extended function of the standard z-score standardization of a vector in R (i.e. function 'scale'). Supports filling in non-finite values as well as re-naming variables to distinguish them from non-standardized variables.
}
\examples{
somedata <- cbind(rnorm(100), runif(100))
normdata <- zt(somedata)
head(normdata)
apply(normdata, MARGIN=2, FUN=mean)
apply(normdata, MARGIN=2, FUN=sd)
}
