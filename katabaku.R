#' @export
#' katabaku kataBaku
#'
#' @title
#' Formal/good (kata baku) for Bahasa Indonesia
#'
#' @nama katabaku
#' @aliases katabaku
#' @aliases kataBaku
#'
#' @description
#' Provides function to change the informal word be
#' the formal word for Bahasa Indonesia.
#'
#' @author
#' Tri Sony Saragih \email{trisonysrg@gmail.com}
#'
#' @param input string vector of length 1,  word from which formal word  is
#' retrieved.
#'
#' @param kamus string vector, additional dictionary to be included.
#'
#'
#' @examples \dontrun{
#'  ## formal word for one word
#'  kataBaku("org") or
#'  katabaku("org")
#'
#'  ## formal word for a set of words
#'  katabaku("org ini sangt pintar")
#'  kataBaku("org ini sangt pintar")
#'
#'
#'
#'  @references
#'  \url{https://www.programiz.com/r-programming/}\cr
#'  \url{https://github.com/nurandi/katadasaR}
#'

kataBaku <- function(input){

  input <- unlist(strsplit(input, "\\s+"))

  kata<- tolower(input)

  kata1<-is.scalar(kata)
  if(!is.null(kata1)) return(kata1)

  kata2<-kataSlang(kata)
  if (!is.null(kata2)) return(kata2)

  kata3<-cek_kamus(kata)
  if (!is.null(kata3)) return (kata3)

  #cari stringdist pada data kata slang
 # kata4<-jarakString_tb(kata)
 # if (!is.null(kata4)) return(kata4)

  #cari stringdist pada data kamus
  kata5<-jarakString(kata)
  if (!is.null(kata5)) return (kata5)

  #else (return (kata))
}

katabaku <-kataBaku
