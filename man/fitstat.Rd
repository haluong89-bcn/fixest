% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/MiscFuns.R
\name{fitstat}
\alias{fitstat}
\title{Computes fit statistics of fixest objects}
\usage{
fitstat(x, type, as.list = FALSE, ...)
}
\arguments{
\item{x}{A \code{fixest} estimation.}

\item{type}{Character vector. The type of fit statistic to be computed. So far, \code{"G"}, the 'working' number of observations, and \code{'theta'}, the over-dispersion parameter in negative binomial estimation, are available.}

\item{as.list}{Logical, default is \code{FALSE}. Only used when one statistic is to be computed (i.e. arg. \code{type} is of length 1). If \code{TRUE}, then a list whose name is the \code{type} is returned containing the statistic.}

\item{...}{Other elements to be passed to other methods and may be used to compute the statistics (for example you can pass on arguments to compute the VCOV when using \code{type = "G"}).}
}
\value{
If two or more types are to be computed, then a list is returned whose names correstpond to the argument \code{type}. If only one type is to be computed, then by default the result is simplified to a vector (or list, it depends on the type) containing the statistics; to return a list instead, \code{as.list=TRUE} needs to be used.
}
\description{
Computes various fit statistics for \code{fixest} estimations.
}
\examples{

data(trade)
gravity = feols(log(Euros) ~ log(dist_km) | Destination + Origin, trade)

# Extracting the 'working' number of observations used to compute the pvalues
fitstat(gravity, "G")

# Idem, but when coimputing two-way SEs
fitstat(gravity, "G", se = "standard")


}
