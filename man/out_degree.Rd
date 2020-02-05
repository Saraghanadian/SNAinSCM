\name{out_degree}
\alias{out_degree}

\title{ out_degree
Determine Out_degree Centrality
}
\description{
This function  determine the out_degree centrality for facilities in the supply chain.
}
\usage{
out_degree(frame)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{frame}{
This is the dataframe containing assignment of weight( value of transfered product) amoung two type of facilities.This weight can be zero value when there is no transfered product between these facilities.
}
}
\details{
%%  ~~ If necessary, more details than the description above ~~
}
\value{
a dataframe containing facilities and out_degree centrality
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
frame = Assignment

Manufacturer_out_degree <_ out_degreee(frame)
#End(Not run)

}
