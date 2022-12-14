% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/weights.R
\name{forest_weights_fitted}
\alias{forest_weights_fitted}
\title{Forest In-Sample Honest Weights (Internal Use)}
\usage{
forest_weights_fitted(forest, honest_sample, train_sample)
}
\arguments{
\item{forest}{\code{morf.forest} object.}

\item{honest_sample}{Honest sample.}

\item{train_sample}{Training sample.}
}
\value{
Matrix of in-sample honest weights.
}
\description{
Computes forest in-sample honest weights for a \code{morf.forest} object relative to the m-th class.
}
\details{
\code{forest} must have been grown using only the training sample.
}
