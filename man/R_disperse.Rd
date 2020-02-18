\name{R_disperse}
\alias{R_disperse}

\title{ R_disperse
Determine R_disperse
}
\description{
This function  determine the R_disperse  for for origin facility in the supply chain.
}
\usage{
R_disperse(frame)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{frame}{
This is the dataframe containing assignment of weight( for example, value of transfered product) amoung two type of facilities.This weight can be zero value when there is no transfered product between these facilities.
}
}
\details{
%%  ~~ If necessary, more details than the description above ~~
}
\value{
a dataframe containing facilities and R_disperse
}

\author{
Sara AkbarGhanadian
}

\examples{
# Not Run:
data(assignment)
frame <- Assignment
# find R disperse for manufactueres

Manufacturer_R_disperse <- R_disperse(frame)
#End(Not run)

}



