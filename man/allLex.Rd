\name{Lexicographic}
\alias{allLex}
\alias{lex2label}
\alias{label2lex}
\title{
Lexicographic ordering 
}
\description{
  
Lexicographic ordering of states is the same as the label order, but
with invalid labels removed. For example, (1,1,1,3) will produce NA.
}
\usage{

allLex(ngam)

lex2label(lex, ngam)

label2lex(label, ngam)

}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{ngam}{Number of gametes}
  \item{lex}{Lexicographic state. Can be a vector of lexicographic
    states to be converted}
  \item{label}{Label. Can be a vector of labels to be converted} 
}
\details{
  Note that conversions are made by listing all the labels and their
  corrsespondign lexicographic state, so this function may not be
  practical for large numbers of gametes.

  When converting lex to label, there may be several possible labels, in
  which case the minimum is taken. 
  
}
\value{
  In allLex a vector of lexicographic states is produced for each
  label. The labels are the names of the vector elements.
  
  In lex2label and label2lex the requested integer or vector of integers
  is produced.
}
\author{
  Fiona Grimson 
}

\examples{

## Vector of all lexicograghic states with labels ( names of elements )
allLex( ngam = 4 )

## Convert lex to label
lex2label( lex = c( 1, 2, 15), ngam = 4 )

## Convert label to lex
label2lex( label = c( 2, 3 ), ngam = 4 ) 

}
\keyword{Lex}
\keyword{Lexicographic}
