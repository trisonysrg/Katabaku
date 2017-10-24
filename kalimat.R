#mencari kata baku yang ada di kompas sesuai dengan kbbi
#caranya dengan menjalankan fungsi dibawah ini, dan jadikan input dengan kamus-->kompas
#jadikan outputnya kedalam bentuk csv, hapus data yang kosong

baku<-list(KBBI)
kamus_kbbi<-unlist(baku)

kalimat<-function(input){

  input <- unlist(strsplit(input, "\\s+"))
  ifelse(input %in% kamus_kbbi, input, "")
}





