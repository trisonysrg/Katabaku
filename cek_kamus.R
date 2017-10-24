#mencek apakah input merupakan kata baku atau tidak atau
#apakah input ada pada kamus atau tidak
#jika ada, maka output yang dikeluarkan adalah inputan semula

list1<-list(kataBaku_kompas)
kamus<-unlist(list1)
cek_kamus<- function(input){
  input <- unlist(strsplit(input, "\\s+"))
  m<-length(input)

  for(j in 1:m){
    if (input[j] %in% kamus){
        input[j]<-kamus[match(input[j], kamus)]
         }
    else {input[j]<-jarakString(input[j])}
    }
      kata3<-return(paste(input, collapse=" "))
}


