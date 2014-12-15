\name{allStates}
\alias{allStates}

\title{
 Conversion Table for all labelling schemes 
}
\description{
Conversion table for all numbering schemes: label, vector,
 lexicographic, and if there are 4 gametes jacquard15 and jacquard9.
}
\usage{
allStates(ngam)
}
\arguments{
  \item{ngam}{Number of gametes}
}
\value{
  A data.frame is returned with the following variables:

  $label : vector of all labels from 0 to maxlabel
  $vec   : matrix of all state vectors (one per row) corresponding to labels. 
  $lex   : vector of lexicographic states for each label

  if there are 4 gametes there is also

  $jaq9  : vector of un-phased jacquard states
  $jaq15 : vector of phased jacquard states

  Invalid labels produce NA in the other columns.
  
}
\author{
Fiona Grimson 
}
\examples{

## create lookup matrix

allStates( ngam = 4 )

allStates( ngam = 5 )
}
