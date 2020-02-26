\name{R_absorb}
\alias{R_absorb}

\title{ R_absorb
  Determine R_absorb
}
\description{
  This function  determine the R_absorb  for for destination facility in the supply chain.
}
\usage{
  R_absorb(frame)
}
\arguments{
  \item{frame}{
    This is the dataframe containing assignment of weight( for example, value of transfered product) amoung two type of facilities.This weight can be zero value when there is no transfered product between these facilities.
  }
}

\value{
  a dataframe containing facilities and R_absorb
}

\author{
  Sara AkbarGhanadian
}

\examples{
  # Not Run:
  data(assignment)
  frame <- Assignment
  # find R disperse for  Distribution centers
  
  DistributionCenter_R_absorb <- R_absorb(frame)
  #End(Not run)  
}