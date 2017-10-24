#untuk mengecek apakah input merupakan angka atau tidak
#jika merupakan angka, maka akan menampilan angka tersebut,
#jika bukan angka, maka lanjut pada iterasi berikutnya

is.scalar <- function(input){

  input <- unlist(strsplit(input, "\\s+"))
  m<-length(input)
  for(j in 1:m){
    if(!is.na(suppressWarnings(as.numeric(input[j]))))
    {
      input[j]<-input[j]
    }
    else {input[j]<-kataSlang(input[j])}
  }
  kata1<- return(paste(input, collapse=" "))
}
