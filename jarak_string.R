#mencari jarak antar string
#method 'lv' adalah menggunakan methode levenshtein distance
#methode dapat diganti sesuai kebutuhan dan berdasarkan nama pada stringdist

jarakString<-function(input){
  input <- unlist(strsplit(input, "\\s+"))
  library(stringdist)
  m<-length(input)
  for(j in 1:m){
    input[j]<-(kamus[which.min(stringdist(input[j],kamus, method = 'lcs'))])
  }
  kata5<- return(paste(input, collapse=" "))

}

#menampilkan semua string dengan minimal stringdist
#jarakstring<-function(input){
 # library(stringdist)
 # return(kamus[which(stringdist(input,kamus, method = 'lcs') == min(stringdist(input,kamus, method ='lcs')))])
#}

