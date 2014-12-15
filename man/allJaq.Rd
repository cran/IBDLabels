\name{allJaq}
\alias{allJaq}
\alias{jaq2label}
\alias{label2jaq}

\title{
  Jacquard ordering
}
\description{
  Jacquard ordering for 4-gamete IBD states. Can be phased (15 states)
  or unphased (9 states). 
}
\usage{

allJaq()

jaq2label(jaq, phased = TRUE )

label2jaq(label, phased = TRUE )
}

\arguments{
  \item{jaq}{ Jacquard state, either phased or unphased}
  \item{label}{ IBD label }
  \item{phased}{ Are the jacquard states the phased (15 states) or
    unphased ( 9 states) versions? }
}
\details{
  Note that the jacquard ordering only applies to the 4-gametes case.
}
\value{
  allJaq() produces a matrix of labels (column 1), phased-jacquard
  (column 2) and unphased-jacquard( column 3).

  label2jaq or jaq2label produces an integer converted the required
  index.

  If label is invalid an NA is returned.
}
\author{
  Fiona Grimson
}
\examples{

## list all jacquard states
allJaq()

## Convert label to jacquard
label2jaq( 3, phased = TRUE )
label2jaq( 3, phased = FALSE )

## Convert jacquard to label
jaq2label( 9, phased = TRUE )
jaq2label( 9, phased = FALSE )

}
\keyword{Jaq}
\keyword{Jacquard}
\keyword{Phased}
\keyword{Unphased}