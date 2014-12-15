\name{maxlabel}
\alias{maxlabel}
\title{
Maximum Label for given number gametes
}
\description{
Get the maximum label for given number of gametes, the label
corresponding to the vector 1:ngam.
}
\usage{
maxlabel(ngam)
}

\arguments{
  \item{ngam}{Number of gametes}
}

\value{
Returns maximum label. Note that minimum label is always zero.
}
\author{
Fiona Grimson
}
\examples{

maxlabel( ngam = 4 )
maxlabel( ngam = 10 ) 


}
