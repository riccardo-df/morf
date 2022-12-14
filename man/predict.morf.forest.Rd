% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/generic-s3.R
\name{predict.morf.forest}
\alias{predict.morf.forest}
\title{Prediction Method for Morf Forest Objects}
\usage{
\method{predict}{morf.forest}(
  object,
  data,
  type = "response",
  predict.all = FALSE,
  n.trees = object$num.trees,
  inbag.counts = NULL,
  n.threads = NULL,
  verbose = TRUE,
  seed = NULL,
  ...
)
}
\arguments{
\item{object}{\code{morf.forest} object.}

\item{data}{Data set of class \code{data.frame}. It must contain at least the same covariates used to train the forests.}

\item{type}{Type of prediction. Either \code{"response"} or \code{"terminalNodes"}.}

\item{predict.all}{Return individual predictions for each tree instead of aggregated predictions for all trees (returns a matrix \code{n.samples} by \code{n.trees}).}

\item{n.trees}{Number of trees used for prediction. The first \code{n.trees} in the forest are used. Default uses all trees in the forest.}

\item{inbag.counts}{Number of times the observations are in-bag in the trees.}

\item{n.threads}{Number of threads. Default is number of CPUs available.}

\item{verbose}{Verbose output.}

\item{seed}{Random seed. Default is \code{NULL}, which generates the seed from \code{R}. Set to \code{0} to ignore the \code{R} seed.}

\item{...}{Further arguments passed to or from other methods.}
}
\value{
Object of class \code{morf.prediction} with elements:
  \item{\code{predictions}}{If \code{type = "response"}, predicted conditional class probabilities.
                            If \code{type = "terminalNodes"}, the IDs of the terminal node in each tree for each observation.}
  \item{\code{n.trees}}{Number of trees.} 
  \item{\code{n.covariates}}{Number of covariates.}
  \item{\code{n.samples}}{Number of samples.}
}
\description{
Prediction method for class \code{morf.forest}.
}
\details{
For \code{type = "response"} (the default), the predicted conditional class probabilities are returned. If forests are 
honest, then these predictions are honest.\cr

For \code{type = "terminalNodes"}, the IDs of the terminal node in each tree for each observation in the given 
dataset are returned.
}
\references{
\itemize{
  \item Wright, M. N. & Ziegler, A. (2017). ranger: A Fast Implementation of Random Forests for High Dimensional Data in C++ and R. J Stat Softw 77:1-17. \doi{10.18637/jss.v077.i01}.
  }
}
\seealso{
\code{\link{morf}}, \code{\link{marginal_effects}}
}
\author{
Riccardo Di Francesco
}
