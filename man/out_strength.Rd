\name{out_strength}
\alias{out_strength}

\title{ out_strength
Determine Out_strength Centrality
}
\description{
This function  determine the out_strength centrality for for origin facility in the supply chain.
}
\usage{
out_strength(frame)
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
a dataframe containing facilities and out_strength centrality
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
# find out-strength for manufactueres

Manufacturer_out_strength <- out_strength(frame)
#End(Not run)

}
