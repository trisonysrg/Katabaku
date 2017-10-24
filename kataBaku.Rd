\name{kataBaku}
\alias{kataBaku}
\alias{katabaku}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{Formal/good word (kata baku) for Bahasa Indonesa}
\description{
Provides a function to change strange word to be good word according to KBBI.
}
\usage{
kataBaku(kata, kamus = NULL)
}
\arguments{
  \item{kata}{string vector of length 1, word or token from which strange word is retrieved.
}
\item{kamus}{string vector, additional dictionary to be included.}
}

%%\value{
%%  ~Describe the value returned
%%  If it is a LIST, use
%%  \item{comp1 }{Description of 'comp1'}
%%  \item{comp2 }{Description of 'comp2'}
%% ...
%%
\references{
\url{http://statslab-rshiny.fmipa.unej.ac.id/EBOOKS/RcomManChp4.pdf}\cr
\url{https://www.programiz.com/r-programming#learn-r-tutorial}
}
\author{Tri Sony \email{trisonysrg@gmail.com}
}

\examples{
\dontrun{
##----  kata baku one word  ---
  kataBaku("sya")
##--	kata baku a set of words.---
  input <-c(kpn anda pulang dr jepang")
}
}
\keyword{kata baku}
\keyword{the word abbreviation}
