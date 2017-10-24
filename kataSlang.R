#kataSlang adalah kata singkatan ataupun
#kata gaul yang tidak baku
#katatidakbaku adalah tabel kataSlang
#kolom 1 adalah kata slang dan kolom kedua kata baku dari kata slang.

kataSlang<-function(input){

  input <- unlist(strsplit(input, "\\s+"))


  list2<-list(katatidakbaku[1])
  kamus_kataSlang1<-unlist(list2)

  list3<-list(katatidakbaku[2])
  kamus_kataSlang2<-unlist(list3)

  #n <- length(kamus_kataSlang1)
  m<-length(input)
  for(j in 1:m){
    if (input[j] %in% kamus_kataSlang1)
      {
      input[j]<-kamus_kataSlang2[match(input[j], kamus_kataSlang1)]
      }
    else {input[j]<-cek_kamus(input[j])}
    }
  kata2<-return(paste(input, collapse=" "))
}
