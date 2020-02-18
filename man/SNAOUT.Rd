\name{SNAOUT}
\alias{SNAOUT}

\title{ Build the "summary" dataframe including the origin facilities and all three metrics

}
\description{
This function allows to build a "summary" of three metics  including out-degree, out_strength, R disperse
in one datafarame from  weight assignment
}
\usage{
SNAOUT(frame)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{frame}{
 This is the name of the dataframe containing the information
  of weight assignment
}
}

\value{
 A dataframe
}

\author{
Sara AkbarGhanadian
}


\examples{
# Not Run:
data(assignment)
frame <- Assignment
# create summary of three  metrics in a dataframe

Manufacturer_SNAOUT_summary<- SNAOUT(frame)
#End(Not run)

}
