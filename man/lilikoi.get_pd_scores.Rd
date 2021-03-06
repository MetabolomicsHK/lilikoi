% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/lilikoi.get_pd_scores.r
\name{lilikoi.get_pd_scores}
\alias{lilikoi.get_pd_scores}
\title{A lilikoi.get_pd_scores Function}
\usage{
lilikoi.get_pd_scores(metaboliteMeasurements, metabolitePathwayTable,
  pathwayMetaboliteDatabase = lilikoi::data.smpdb, maxit = 200)
}
\arguments{
\item{metaboliteMeasurements}{Metabolite levels}

\item{metabolitePathwayTable}{This is the metabolitePathwayTable from lilikoi.metab_to_pathway function. This table includes the metabolite ids and their corresponding HMDB ids}

\item{pathwayMetaboliteDatabase}{An external database of metabolites and their associated pathways.}

\item{maxit}{Max iterations for princurve in pathifier algorithm. Lowering increases speed but lowers performance}
}
\description{
This function allows you to compute Pathway Deregulation Score deriving
make sure that you have the below database for the metabolites and pathway list:
meta_path.RData
}
\examples{
filename <- system.file("extdata", "plasma_breast_cancer.csv", package = "lilikoi")
data <- read.csv(file = filename, check.names = FALSE, row.names = 1)[, 1:20]
metaboliteNames <- colnames(data)[-1]
matches <- lilikoi.metab_to_pathway(metaboliteNames, "name")
PDSmatrix <- lilikoi.get_pd_scores(data, matches, lilikoi::data.smpdb[1:23,], maxit = 1)
}
