\name{in_strength}
\alias{in_strength}

\title{ in_strength
Determine in_strength Centrality
}
\description{
This function  determine the in_strength centrality for for destination facility in the supply chain.
}
\usage{
in_strength(frame)
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
a dataframe containing facilities and in_strength centrality
}
\references{
%% ~put references to the literature/web site here ~
}
\author{
Sara AkbarGhanadian
}
\note{
%%  ~~further notes~~
}

%% ~Make other sections like Warning with \section{Warning }{....} ~

\seealso{
%% ~~objects to See Also as \code{\link{help}}, ~~~
}
\examples{
# Not Run:
data(assignment)
frame <- Assignment
# find in-strength for Distribution centers

DistributionCenter_in_strength <- in_strength(frame)
#End(Not run)

}
