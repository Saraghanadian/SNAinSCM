\name{SNAIN}
\alias{SNAIN}

\title{ Build the "summary" dataframe including the destination facilities and all three metrics

}
\description{
This function allows to build a "summary" of three metics  including in-degree, in_strength, R absorb
in one datafarame from  weight assignment
}
\usage{
SNAIn(frame)
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


%% ~Make other sections like Warning with \section{Warning }{....} ~


\examples{
# Not Run:
data(assignment)
frame <- Assignment
# create summary of three  metrics in a dataframe

DistributionCenter_SNAin_summary<- SNAIN(frame)
#End(Not run)

}