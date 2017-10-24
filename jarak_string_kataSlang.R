#mencari jarak antar string
#method 'lv' adalah menggunakan methode levenshtein distance
#method 'jw' adalah menggunakan methode jaro(jaro-winker distance)
#method 'hamming' adalah menggunakan methode hamming distance

jarakString_tb<-function(input){
  input <- unlist(strsplit(input, "\\s+"))
  library(stringdist)
  m<-length(input)
  for(j in 1:m){
    input[j]<-(kamus_kataSlang1[which.min(stringdist(input,kamus_kataSlang1, method = 'lcs'))])
  }
  kata4<- return(paste(input, collapse=" "))
}
