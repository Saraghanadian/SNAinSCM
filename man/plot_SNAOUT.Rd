\name{plot_SNAOUT}
\alias{plot_SNAOUT}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{ plot_SNAOUT
%%  ~~function to do ... ~~
}
\description{
 Plot SNA metrics in barcharts to be able to comapre the result
}
\usage{
plot_SNA(frame, type)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{frame, type }{
 Plot the SNA metrics base on type of facilities
}
}
\details{
Type 1 is Manufacturer
Type 2 is distribution centers
Type 3 is retailers/ customers
type 4 is remanufacturers
}
\value{
Bar charts with value of degree centrality, strength centrality, and  R factor on Y axis and type Of facilities on Y axis
}

\author{
Sara AkbarGhanadian
}

\examples{
# Not Run:
data(assignment)
frame <- Assignment
# create summary of three  metrics in a dataframe
summary <-SNAOUT(frame )
# select type of facility
# 1 is Manufacturer
# 2 is distribution centers
# 3 is retailers/ customers
# 4 is remanufacturers
Manufacturer_Plot_SNAOUT<- PLot_SNAOUT(summary , 1)
#End(Not run)
}