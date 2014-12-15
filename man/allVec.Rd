\name{State Vectors}
\alias{allVec}
\alias{vec2label}
\alias{label2vec}
\alias{fgl2vec}
\title{
IBD state vectors
}
\description{
  
These vectors are complete descriptions of the IBD state. There is one
vector element per gamete. The first gamete is always numbered one, with
subsequent gametes being given the same number if they are IBD with a
previous gamete, or a new number if they are not.

For example in (1,2,2,3), the second and third gametes are IBD.

Note that label starts at ZERO. When converting label to vector, if the
label is invalid the returned vector has NA elements.
}
\usage{
allVec(ngam)

vec2label(vec)

label2vec(label, ngam) 

fgl2vec(vec)
}

\arguments{
  \item{ngam}{Number of gametes if a label is supplied, otherwise number
    of gametes will be determined by the length of the vector.}
  \item{vec}{IBD state description vector. Must be a single vector.}
  \item{label}{IBD label. Must be an integer.}
}
\value{

For allVec, a matrix of the vectors for each label is produced, with a
vector on each row and a row for each label. The labels are the row
names. 

For vec2label and label2vec an integer label or vector is prouduced
respectively. If the input label is invalid the returned vector contains
NA elements.

fgl2vec returns a vector of the same length as the input,
 renumbered. The vec2label function calls fgl2vec, so any vector
 supplied will be renumbered. If (1,1,1,3) is given, it will be
 renumbered (1,1,1,2) and given the label 1, not 2.
 

}
\author{
Fiona Grimson
}
\examples{

## Vectors for all labels
allVec( ngam = 4 )

## Convert vector to label, with renumbering or without
vec2label( c(1,1,1,3))
vec2label( c(1,1,1,2)) 

## Convert label to vector
label2vec( 1, ngam = 4 )
label2vec( 2, ngam = 4 )
label2vec( 2, ngam = 6 ) 

## renumbering
fgl2vec( c(1,1,1,3) )
fgl2vec( c(5,1,5,6) ) 

}
\keyword{ Vec }
\keyword{ Vector }
