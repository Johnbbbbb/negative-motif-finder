ImportedSubstrateList<- read.csv("input1", stringsAsFactors=FALSE)
NegativeSubstrateList<- read.csv("input2", stringsAsFactors=FALSE)
SubstrateBackgroundFrequency<- read.csv("input3", stringsAsFactors=FALSE, header = FALSE)

ScreenerFilename<-"screener"



FILENAME<-"output1"
FILENAME2<-"output2"
FILENAME3<-"output3"



SubstrateBackgroundFrequency<-t(SubstrateBackgroundFrequency)
# number<-nrow(SubstrateBackgroundFrequency)-1
SubstrateBackgroundFrequency<-SubstrateBackgroundFrequency[2:nrow(SubstrateBackgroundFrequency),]
Sub<-na.omit(SubstrateBackgroundFrequency)











OutputMatrix<-"KinaseMatrix.csv"
CharacterizationTable<-"CharacterizationTableForThisKinase.csv"
SDtable<-"SDtableforthisKinase"
SiteSelectivityTable<-"SiteSelectivityForThisKinase"



substrates<-matrix(rep("A",times=((nrow(ImportedSubstrateList)-1)*15)),ncol = 15)
#SeqsToBeScored<-"asdasd"
  
for (i in 2:nrow(ImportedSubstrateList))
{
  substratemotif<-ImportedSubstrateList[i,4:18]
  substratemotif[8]<-"Y"
  #substratemotif<-paste(substratemotif,sep = "",collapse = "")
  j=i-1
  substratemotif<-unlist(substratemotif)
  substrates[j,1:15]<-substratemotif
}

# SpacesToOs<-c(""="O",)
# substrates<-SpacesToOs[substrates]

SubstrateBackgroundFrequency[nrow(SubstrateBackgroundFrequency),2]

if(2==2){
Amean<-mean(as.numeric(SubstrateBackgroundFrequency[1:(nrow(SubstrateBackgroundFrequency)),2]), na.rm=TRUE)
Cmean<-mean(as.numeric(SubstrateBackgroundFrequency[1:(nrow(SubstrateBackgroundFrequency)),3]), na.rm=TRUE)
Dmean<-mean(as.numeric(SubstrateBackgroundFrequency[1:(nrow(SubstrateBackgroundFrequency)),4]), na.rm=TRUE)
Emean<-mean(as.numeric(SubstrateBackgroundFrequency[1:(nrow(SubstrateBackgroundFrequency)),5]), na.rm=TRUE)
Fmean<-mean(as.numeric(SubstrateBackgroundFrequency[1:(nrow(SubstrateBackgroundFrequency)),6]), na.rm=TRUE)
Gmean<-mean(as.numeric(SubstrateBackgroundFrequency[1:(nrow(SubstrateBackgroundFrequency)),7]), na.rm=TRUE)
Hmean<-mean(as.numeric(SubstrateBackgroundFrequency[1:(nrow(SubstrateBackgroundFrequency)),8]), na.rm=TRUE)
Imean<-mean(as.numeric(SubstrateBackgroundFrequency[1:(nrow(SubstrateBackgroundFrequency)),9]), na.rm=TRUE)
Kmean<-mean(as.numeric(SubstrateBackgroundFrequency[1:(nrow(SubstrateBackgroundFrequency)),10]), na.rm=TRUE)
Lmean<-mean(as.numeric(SubstrateBackgroundFrequency[1:(nrow(SubstrateBackgroundFrequency)),11]), na.rm=TRUE)
Mmean<-mean(as.numeric(SubstrateBackgroundFrequency[1:(nrow(SubstrateBackgroundFrequency)),12]), na.rm=TRUE)
Nmean<-mean(as.numeric(SubstrateBackgroundFrequency[1:(nrow(SubstrateBackgroundFrequency)),13]), na.rm=TRUE)
Pmean<-mean(as.numeric(SubstrateBackgroundFrequency[1:(nrow(SubstrateBackgroundFrequency)),14]), na.rm=TRUE)
Qmean<-mean(as.numeric(SubstrateBackgroundFrequency[1:(nrow(SubstrateBackgroundFrequency)),15]), na.rm=TRUE)
Rmean<-mean(as.numeric(SubstrateBackgroundFrequency[1:(nrow(SubstrateBackgroundFrequency)),16]), na.rm=TRUE)
Smean<-mean(as.numeric(SubstrateBackgroundFrequency[1:(nrow(SubstrateBackgroundFrequency)),17]), na.rm=TRUE)
Tmean<-mean(as.numeric(SubstrateBackgroundFrequency[1:(nrow(SubstrateBackgroundFrequency)),18]), na.rm=TRUE)
Vmean<-mean(as.numeric(SubstrateBackgroundFrequency[1:(nrow(SubstrateBackgroundFrequency)),19]), na.rm=TRUE)
Wmean<-mean(as.numeric(SubstrateBackgroundFrequency[1:(nrow(SubstrateBackgroundFrequency)),20]), na.rm=TRUE)
Ymean<-mean(as.numeric(SubstrateBackgroundFrequency[1:(nrow(SubstrateBackgroundFrequency)),21]), na.rm=TRUE)

AllMeans<-c(Amean,Cmean,Dmean,Emean,Fmean,Gmean,Hmean,Imean,Kmean,Lmean,Mmean,Nmean,Pmean,Qmean,Rmean,Smean,Tmean,Vmean,Wmean,Ymean)

Asd<-sd(as.numeric(SubstrateBackgroundFrequency[1:(nrow(SubstrateBackgroundFrequency)),2]), na.rm=TRUE)
Csd<-sd(as.numeric(SubstrateBackgroundFrequency[1:(nrow(SubstrateBackgroundFrequency)),3]), na.rm=TRUE)
Dsd<-sd(as.numeric(SubstrateBackgroundFrequency[1:(nrow(SubstrateBackgroundFrequency)),4]), na.rm=TRUE)
Esd<-sd(as.numeric(SubstrateBackgroundFrequency[1:(nrow(SubstrateBackgroundFrequency)),5]), na.rm=TRUE)
Fsd<-sd(as.numeric(SubstrateBackgroundFrequency[1:(nrow(SubstrateBackgroundFrequency)),6]), na.rm=TRUE)
Gsd<-sd(as.numeric(SubstrateBackgroundFrequency[1:(nrow(SubstrateBackgroundFrequency)),7]), na.rm=TRUE)
Hsd<-sd(as.numeric(SubstrateBackgroundFrequency[1:(nrow(SubstrateBackgroundFrequency)),8]), na.rm=TRUE)
Isd<-sd(as.numeric(SubstrateBackgroundFrequency[1:(nrow(SubstrateBackgroundFrequency)),9]), na.rm=TRUE)
Ksd<-sd(as.numeric(SubstrateBackgroundFrequency[1:(nrow(SubstrateBackgroundFrequency)),10]), na.rm=TRUE)
Lsd<-sd(as.numeric(SubstrateBackgroundFrequency[1:(nrow(SubstrateBackgroundFrequency)),11]), na.rm=TRUE)
Msd<-sd(as.numeric(SubstrateBackgroundFrequency[1:(nrow(SubstrateBackgroundFrequency)),12]), na.rm=TRUE)
Nsd<-sd(as.numeric(SubstrateBackgroundFrequency[1:(nrow(SubstrateBackgroundFrequency)),13]), na.rm=TRUE)
Psd<-sd(as.numeric(SubstrateBackgroundFrequency[1:(nrow(SubstrateBackgroundFrequency)),14]), na.rm=TRUE)
Qsd<-sd(as.numeric(SubstrateBackgroundFrequency[1:(nrow(SubstrateBackgroundFrequency)),15]), na.rm=TRUE)
Rsd<-sd(as.numeric(SubstrateBackgroundFrequency[1:(nrow(SubstrateBackgroundFrequency)),16]), na.rm=TRUE)
Ssd<-sd(as.numeric(SubstrateBackgroundFrequency[1:(nrow(SubstrateBackgroundFrequency)),17]), na.rm=TRUE)
Tsd<-sd(as.numeric(SubstrateBackgroundFrequency[1:(nrow(SubstrateBackgroundFrequency)),18]), na.rm=TRUE)
Vsd<-sd(as.numeric(SubstrateBackgroundFrequency[1:(nrow(SubstrateBackgroundFrequency)),19]), na.rm=TRUE)
Wsd<-sd(as.numeric(SubstrateBackgroundFrequency[1:(nrow(SubstrateBackgroundFrequency)),20]), na.rm=TRUE)
Ysd<-sd(as.numeric(SubstrateBackgroundFrequency[1:(nrow(SubstrateBackgroundFrequency)),21]), na.rm=TRUE)
}
AllSDs<-c(Asd,Csd,Dsd,Esd,Fsd,Gsd,Hsd,Isd,Ksd,Lsd,Msd,Nsd,Psd,Qsd,Rsd,Ssd,Tsd,Vsd,Wsd,Ysd)
#this is subbackfreq SDs

SBF_statisticalvalues<-cbind(AllMeans,AllSDs)

#create the percent table
if (1==1){
  Column1<-substrates[,1]
  Column2<-substrates[,2]
  Column3<-substrates[,3]
  Column4<-substrates[,4]
  Column5<-substrates[,5]
  Column6<-substrates[,6]
  Column7<-substrates[,7]
  Column8<-substrates[,8]
  Column9<-substrates[,9]
  Column10<-substrates[,10]
  Column11<-substrates[,11]
  Column12<-substrates[,12]
  Column13<-substrates[,13]
  Column14<-substrates[,14]
  Column15<-substrates[,15]
  
  spaces1<-sum((Column1%in% ""))
  spaces2<-sum(Column2%in% "")
  spaces3<-sum(Column3%in% "")
  spaces4<-sum(Column4%in% "")
  spaces5<-sum(Column5%in% "")
  spaces6<-sum(Column6%in% "")
  spaces7<-sum(Column7%in% "")
  spaces8<-sum(Column8%in% "")
  spaces9<-sum(Column9%in% "")
  spaces10<-sum(Column10%in% "")
  spaces11<-sum(Column11%in% "")
  spaces12<-sum(Column12%in% "")
  spaces13<-sum(Column13%in% "")
  spaces14<-sum(Column14%in% "")
  spaces15<-sum(Column15%in% "")
  
  A1<-sum(Column1 %in% "A")/(length(Column1)-spaces1)
  A2<-sum(Column2 %in% "A")/(length(Column2)-spaces2)
  A3<-sum(Column3 %in% "A")/(length(Column3)-spaces3)
  A4<-sum(Column4 %in% "A")/(length(Column4)-spaces4)
  A5<-sum(Column5 %in% "A")/(length(Column5)-spaces5)
  A6<-sum(Column6 %in% "A")/(length(Column6)-spaces6)
  A7<-sum(Column7 %in% "A")/(length(Column7)-spaces7)
  A8<-sum(Column8 %in% "A")/(length(Column8)-spaces8)
  A9<-sum(Column9 %in% "A")/(length(Column9)-spaces9)
  A10<-sum(Column10 %in% "A")/(length(Column10)-spaces10)
  A11<-sum(Column11 %in% "A")/(length(Column11)-spaces11)
  A12<-sum(Column12 %in% "A")/(length(Column12)-spaces12)
  A13<-sum(Column13 %in% "A")/(length(Column13)-spaces13)
  A14<-sum(Column14 %in% "A")/(length(Column14)-spaces14)
  A15<-sum(Column15 %in% "A")/(length(Column15)-spaces15)
  AllAs<-cbind(A1,A2,A3,A4,A5,A6,A7,A8,A9,A10,A11,A12,A13,A14,A15)
  
  C1<-sum(Column1 %in% "C")/(length(Column1)-spaces1)
  C2<-sum(Column2 %in% "C")/(length(Column2)-spaces2)
  C3<-sum(Column3 %in% "C")/(length(Column3)-spaces3)
  C4<-sum(Column4 %in% "C")/(length(Column4)-spaces4)
  C5<-sum(Column5 %in% "C")/(length(Column5)-spaces5)
  C6<-sum(Column6 %in% "C")/(length(Column6)-spaces6)
  C7<-sum(Column7 %in% "C")/(length(Column7)-spaces7)
  C8<-sum(Column8 %in% "C")/(length(Column8)-spaces8)
  C9<-sum(Column9 %in% "C")/(length(Column9)-spaces9)
  C10<-sum(Column10 %in% "C")/(length(Column10)-spaces10)
  C11<-sum(Column11 %in% "C")/(length(Column11)-spaces11)
  C12<-sum(Column12 %in% "C")/(length(Column12)-spaces12)
  C13<-sum(Column13 %in% "C")/(length(Column13)-spaces13)
  C14<-sum(Column14 %in% "C")/(length(Column14)-spaces14)
  C15<-sum(Column15 %in% "C")/(length(Column15)-spaces15)
  CllCs<-cbind(C1,C2,C3,C4,C5,C6,C7,C8,C9,C10,C11,C12,C13,C14,C15)
  
  D1<-sum(Column1 %in% "D")/(length(Column1)-spaces1)
  D2<-sum(Column2 %in% "D")/(length(Column2)-spaces2)
  D3<-sum(Column3 %in% "D")/(length(Column3)-spaces3)
  D4<-sum(Column4 %in% "D")/(length(Column4)-spaces4)
  D5<-sum(Column5 %in% "D")/(length(Column5)-spaces5)
  D6<-sum(Column6 %in% "D")/(length(Column6)-spaces6)
  D7<-sum(Column7 %in% "D")/(length(Column7)-spaces7)
  D8<-sum(Column8 %in% "D")/(length(Column8)-spaces8)
  D9<-sum(Column9 %in% "D")/(length(Column9)-spaces9)
  D10<-sum(Column10 %in% "D")/(length(Column10)-spaces10)
  D11<-sum(Column11 %in% "D")/(length(Column11)-spaces11)
  D12<-sum(Column12 %in% "D")/(length(Column12)-spaces12)
  D13<-sum(Column13 %in% "D")/(length(Column13)-spaces13)
  D14<-sum(Column14 %in% "D")/(length(Column14)-spaces14)
  D15<-sum(Column15 %in% "D")/(length(Column15)-spaces15)
  DllDs<-cbind(D1,D2,D3,D4,D5,D6,D7,D8,D9,D10,D11,D12,D13,D14,D15)
  
  E1<-sum(Column1 %in% "E")/(length(Column1)-spaces1)
  E2<-sum(Column2 %in% "E")/(length(Column2)-spaces2)
  E3<-sum(Column3 %in% "E")/(length(Column3)-spaces3)
  E4<-sum(Column4 %in% "E")/(length(Column4)-spaces4)
  E5<-sum(Column5 %in% "E")/(length(Column5)-spaces5)
  E6<-sum(Column6 %in% "E")/(length(Column6)-spaces6)
  E7<-sum(Column7 %in% "E")/(length(Column7)-spaces7)
  E8<-sum(Column8 %in% "E")/(length(Column8)-spaces8)
  E9<-sum(Column9 %in% "E")/(length(Column9)-spaces9)
  E10<-sum(Column10 %in% "E")/(length(Column10)-spaces10)
  E11<-sum(Column11 %in% "E")/(length(Column11)-spaces11)
  E12<-sum(Column12 %in% "E")/(length(Column12)-spaces12)
  E13<-sum(Column13 %in% "E")/(length(Column13)-spaces13)
  E14<-sum(Column14 %in% "E")/(length(Column14)-spaces14)
  E15<-sum(Column15 %in% "E")/(length(Column15)-spaces15)
  EllEs<-cbind(E1,E2,E3,E4,E5,E6,E7,E8,E9,E10,E11,E12,E13,E14,E15)
  
  
  F1<-sum(Column1 %in% "F")/(length(Column1)-spaces1)
  F2<-sum(Column2 %in% "F")/(length(Column2)-spaces2)
  F3<-sum(Column3 %in% "F")/(length(Column3)-spaces3)
  F4<-sum(Column4 %in% "F")/(length(Column4)-spaces4)
  F5<-sum(Column5 %in% "F")/(length(Column5)-spaces5)
  F6<-sum(Column6 %in% "F")/(length(Column6)-spaces6)
  F7<-sum(Column7 %in% "F")/(length(Column7)-spaces7)
  F8<-sum(Column8 %in% "F")/(length(Column8)-spaces8)
  F9<-sum(Column9 %in% "F")/(length(Column9)-spaces9)
  F10<-sum(Column10 %in% "F")/(length(Column10)-spaces10)
  F11<-sum(Column11 %in% "F")/(length(Column11)-spaces11)
  F12<-sum(Column12 %in% "F")/(length(Column12)-spaces12)
  F13<-sum(Column13 %in% "F")/(length(Column13)-spaces13)
  F14<-sum(Column14 %in% "F")/(length(Column14)-spaces14)
  F15<-sum(Column15 %in% "F")/(length(Column15)-spaces15)
  FllFs<-cbind(F1,F2,F3,F4,F5,F6,F7,F8,F9,F10,F11,F12,F13,F14,F15)
  
  
  G1<-sum(Column1 %in% "G")/(length(Column1)-spaces1)
  G2<-sum(Column2 %in% "G")/(length(Column2)-spaces2)
  G3<-sum(Column3 %in% "G")/(length(Column3)-spaces3)
  G4<-sum(Column4 %in% "G")/(length(Column4)-spaces4)
  G5<-sum(Column5 %in% "G")/(length(Column5)-spaces5)
  G6<-sum(Column6 %in% "G")/(length(Column6)-spaces6)
  G7<-sum(Column7 %in% "G")/(length(Column7)-spaces7)
  G8<-sum(Column8 %in% "G")/(length(Column8)-spaces8)
  G9<-sum(Column9 %in% "G")/(length(Column9)-spaces9)
  G10<-sum(Column10 %in% "G")/(length(Column10)-spaces10)
  G11<-sum(Column11 %in% "G")/(length(Column11)-spaces11)
  G12<-sum(Column12 %in% "G")/(length(Column12)-spaces12)
  G13<-sum(Column13 %in% "G")/(length(Column13)-spaces13)
  G14<-sum(Column14 %in% "G")/(length(Column14)-spaces14)
  G15<-sum(Column15 %in% "G")/(length(Column15)-spaces15)
  GllGs<-cbind(G1,G2,G3,G4,G5,G6,G7,G8,G9,G10,G11,G12,G13,G14,G15)
  
  
  H1<-sum(Column1 %in% "H")/(length(Column1)-spaces1)
  H2<-sum(Column2 %in% "H")/(length(Column2)-spaces2)
  H3<-sum(Column3 %in% "H")/(length(Column3)-spaces3)
  H4<-sum(Column4 %in% "H")/(length(Column4)-spaces4)
  H5<-sum(Column5 %in% "H")/(length(Column5)-spaces5)
  H6<-sum(Column6 %in% "H")/(length(Column6)-spaces6)
  H7<-sum(Column7 %in% "H")/(length(Column7)-spaces7)
  H8<-sum(Column8 %in% "H")/(length(Column8)-spaces8)
  H9<-sum(Column9 %in% "H")/(length(Column9)-spaces9)
  H10<-sum(Column10 %in% "H")/(length(Column10)-spaces10)
  H11<-sum(Column11 %in% "H")/(length(Column11)-spaces11)
  H12<-sum(Column12 %in% "H")/(length(Column12)-spaces12)
  H13<-sum(Column13 %in% "H")/(length(Column13)-spaces13)
  H14<-sum(Column14 %in% "H")/(length(Column14)-spaces14)
  H15<-sum(Column15 %in% "H")/(length(Column15)-spaces15)
  HllHs<-cbind(H1,H2,H3,H4,H5,H6,H7,H8,H9,H10,H11,H12,H13,H14,H15)
  
  
  I1<-sum(Column1 %in% "I")/(length(Column1)-spaces1)
  I2<-sum(Column2 %in% "I")/(length(Column2)-spaces2)
  I3<-sum(Column3 %in% "I")/(length(Column3)-spaces3)
  I4<-sum(Column4 %in% "I")/(length(Column4)-spaces4)
  I5<-sum(Column5 %in% "I")/(length(Column5)-spaces5)
  I6<-sum(Column6 %in% "I")/(length(Column6)-spaces6)
  I7<-sum(Column7 %in% "I")/(length(Column7)-spaces7)
  I8<-sum(Column8 %in% "I")/(length(Column8)-spaces8)
  I9<-sum(Column9 %in% "I")/(length(Column9)-spaces9)
  I10<-sum(Column10 %in% "I")/(length(Column10)-spaces10)
  I11<-sum(Column11 %in% "I")/(length(Column11)-spaces11)
  I12<-sum(Column12 %in% "I")/(length(Column12)-spaces12)
  I13<-sum(Column13 %in% "I")/(length(Column13)-spaces13)
  I14<-sum(Column14 %in% "I")/(length(Column14)-spaces14)
  I15<-sum(Column15 %in% "I")/(length(Column15)-spaces15)
  IllIs<-cbind(I1,I2,I3,I4,I5,I6,I7,I8,I9,I10,I11,I12,I13,I14,I15)
  
  
  K1<-sum(Column1 %in% "K")/(length(Column1)-spaces1)
  K2<-sum(Column2 %in% "K")/(length(Column2)-spaces2)
  K3<-sum(Column3 %in% "K")/(length(Column3)-spaces3)
  K4<-sum(Column4 %in% "K")/(length(Column4)-spaces4)
  K5<-sum(Column5 %in% "K")/(length(Column5)-spaces5)
  K6<-sum(Column6 %in% "K")/(length(Column6)-spaces6)
  K7<-sum(Column7 %in% "K")/(length(Column7)-spaces7)
  K8<-sum(Column8 %in% "K")/(length(Column8)-spaces8)
  K9<-sum(Column9 %in% "K")/(length(Column9)-spaces9)
  K10<-sum(Column10 %in% "K")/(length(Column10)-spaces10)
  K11<-sum(Column11 %in% "K")/(length(Column11)-spaces11)
  K12<-sum(Column12 %in% "K")/(length(Column12)-spaces12)
  K13<-sum(Column13 %in% "K")/(length(Column13)-spaces13)
  K14<-sum(Column14 %in% "K")/(length(Column14)-spaces14)
  K15<-sum(Column15 %in% "K")/(length(Column15)-spaces15)
  KllKs<-cbind(K1,K2,K3,K4,K5,K6,K7,K8,K9,K10,K11,K12,K13,K14,K15)
  
  
  L1<-sum(Column1 %in% "L")/(length(Column1)-spaces1)
  L2<-sum(Column2 %in% "L")/(length(Column2)-spaces2)
  L3<-sum(Column3 %in% "L")/(length(Column3)-spaces3)
  L4<-sum(Column4 %in% "L")/(length(Column4)-spaces4)
  L5<-sum(Column5 %in% "L")/(length(Column5)-spaces5)
  L6<-sum(Column6 %in% "L")/(length(Column6)-spaces6)
  L7<-sum(Column7 %in% "L")/(length(Column7)-spaces7)
  L8<-sum(Column8 %in% "L")/(length(Column8)-spaces8)
  L9<-sum(Column9 %in% "L")/(length(Column9)-spaces9)
  L10<-sum(Column10 %in% "L")/(length(Column10)-spaces10)
  L11<-sum(Column11 %in% "L")/(length(Column11)-spaces11)
  L12<-sum(Column12 %in% "L")/(length(Column12)-spaces12)
  L13<-sum(Column13 %in% "L")/(length(Column13)-spaces13)
  L14<-sum(Column14 %in% "L")/(length(Column14)-spaces14)
  L15<-sum(Column15 %in% "L")/(length(Column15)-spaces15)
  LllLs<-cbind(L1,L2,L3,L4,L5,L6,L7,L8,L9,L10,L11,L12,L13,L14,L15)
  
  
  M1<-sum(Column1 %in% "M")/(length(Column1)-spaces1)
  M2<-sum(Column2 %in% "M")/(length(Column2)-spaces2)
  M3<-sum(Column3 %in% "M")/(length(Column3)-spaces3)
  M4<-sum(Column4 %in% "M")/(length(Column4)-spaces4)
  M5<-sum(Column5 %in% "M")/(length(Column5)-spaces5)
  M6<-sum(Column6 %in% "M")/(length(Column6)-spaces6)
  M7<-sum(Column7 %in% "M")/(length(Column7)-spaces7)
  M8<-sum(Column8 %in% "M")/(length(Column8)-spaces8)
  M9<-sum(Column9 %in% "M")/(length(Column9)-spaces9)
  M10<-sum(Column10 %in% "M")/(length(Column10)-spaces10)
  M11<-sum(Column11 %in% "M")/(length(Column11)-spaces11)
  M12<-sum(Column12 %in% "M")/(length(Column12)-spaces12)
  M13<-sum(Column13 %in% "M")/(length(Column13)-spaces13)
  M14<-sum(Column14 %in% "M")/(length(Column14)-spaces14)
  M15<-sum(Column15 %in% "M")/(length(Column15)-spaces15)
  MllMs<-cbind(M1,M2,M3,M4,M5,M6,M7,M8,M9,M10,M11,M12,M13,M14,M15)
  
  
  N1<-sum(Column1 %in% "N")/(length(Column1)-spaces1)
  N2<-sum(Column2 %in% "N")/(length(Column2)-spaces2)
  N3<-sum(Column3 %in% "N")/(length(Column3)-spaces3)
  N4<-sum(Column4 %in% "N")/(length(Column4)-spaces4)
  N5<-sum(Column5 %in% "N")/(length(Column5)-spaces5)
  N6<-sum(Column6 %in% "N")/(length(Column6)-spaces6)
  N7<-sum(Column7 %in% "N")/(length(Column7)-spaces7)
  N8<-sum(Column8 %in% "N")/(length(Column8)-spaces8)
  N9<-sum(Column9 %in% "N")/(length(Column9)-spaces9)
  N10<-sum(Column10 %in% "N")/(length(Column10)-spaces10)
  N11<-sum(Column11 %in% "N")/(length(Column11)-spaces11)
  N12<-sum(Column12 %in% "N")/(length(Column12)-spaces12)
  N13<-sum(Column13 %in% "N")/(length(Column13)-spaces13)
  N14<-sum(Column14 %in% "N")/(length(Column14)-spaces14)
  N15<-sum(Column15 %in% "N")/(length(Column15)-spaces15)
  NllNs<-cbind(N1,N2,N3,N4,N5,N6,N7,N8,N9,N10,N11,N12,N13,N14,N15)
  
  
  P1<-sum(Column1 %in% "P")/(length(Column1)-spaces1)
  P2<-sum(Column2 %in% "P")/(length(Column2)-spaces2)
  P3<-sum(Column3 %in% "P")/(length(Column3)-spaces3)
  P4<-sum(Column4 %in% "P")/(length(Column4)-spaces4)
  P5<-sum(Column5 %in% "P")/(length(Column5)-spaces5)
  P6<-sum(Column6 %in% "P")/(length(Column6)-spaces6)
  P7<-sum(Column7 %in% "P")/(length(Column7)-spaces7)
  P8<-sum(Column8 %in% "P")/(length(Column8)-spaces8)
  P9<-sum(Column9 %in% "P")/(length(Column9)-spaces9)
  P10<-sum(Column10 %in% "P")/(length(Column10)-spaces10)
  P11<-sum(Column11 %in% "P")/(length(Column11)-spaces11)
  P12<-sum(Column12 %in% "P")/(length(Column12)-spaces12)
  P13<-sum(Column13 %in% "P")/(length(Column13)-spaces13)
  P14<-sum(Column14 %in% "P")/(length(Column14)-spaces14)
  P15<-sum(Column15 %in% "P")/(length(Column15)-spaces15)
  PllPs<-cbind(P1,P2,P3,P4,P5,P6,P7,P8,P9,P10,P11,P12,P13,P14,P15)
  
  
  Q1<-sum(Column1 %in% "Q")/(length(Column1)-spaces1)
  Q2<-sum(Column2 %in% "Q")/(length(Column2)-spaces2)
  Q3<-sum(Column3 %in% "Q")/(length(Column3)-spaces3)
  Q4<-sum(Column4 %in% "Q")/(length(Column4)-spaces4)
  Q5<-sum(Column5 %in% "Q")/(length(Column5)-spaces5)
  Q6<-sum(Column6 %in% "Q")/(length(Column6)-spaces6)
  Q7<-sum(Column7 %in% "Q")/(length(Column7)-spaces7)
  Q8<-sum(Column8 %in% "Q")/(length(Column8)-spaces8)
  Q9<-sum(Column9 %in% "Q")/(length(Column9)-spaces9)
  Q10<-sum(Column10 %in% "Q")/(length(Column10)-spaces10)
  Q11<-sum(Column11 %in% "Q")/(length(Column11)-spaces11)
  Q12<-sum(Column12 %in% "Q")/(length(Column12)-spaces12)
  Q13<-sum(Column13 %in% "Q")/(length(Column13)-spaces13)
  Q14<-sum(Column14 %in% "Q")/(length(Column14)-spaces14)
  Q15<-sum(Column15 %in% "Q")/(length(Column15)-spaces15)
  QllQs<-cbind(Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q8,Q9,Q10,Q11,Q12,Q13,Q14,Q15)
  
  
  R1<-sum(Column1 %in% "R")/(length(Column1)-spaces1)
  R2<-sum(Column2 %in% "R")/(length(Column2)-spaces2)
  R3<-sum(Column3 %in% "R")/(length(Column3)-spaces3)
  R4<-sum(Column4 %in% "R")/(length(Column4)-spaces4)
  R5<-sum(Column5 %in% "R")/(length(Column5)-spaces5)
  R6<-sum(Column6 %in% "R")/(length(Column6)-spaces6)
  R7<-sum(Column7 %in% "R")/(length(Column7)-spaces7)
  R8<-sum(Column8 %in% "R")/(length(Column8)-spaces8)
  R9<-sum(Column9 %in% "R")/(length(Column9)-spaces9)
  R10<-sum(Column10 %in% "R")/(length(Column10)-spaces10)
  R11<-sum(Column11 %in% "R")/(length(Column11)-spaces11)
  R12<-sum(Column12 %in% "R")/(length(Column12)-spaces12)
  R13<-sum(Column13 %in% "R")/(length(Column13)-spaces13)
  R14<-sum(Column14 %in% "R")/(length(Column14)-spaces14)
  R15<-sum(Column15 %in% "R")/(length(Column15)-spaces15)
  RllRs<-cbind(R1,R2,R3,R4,R5,R6,R7,R8,R9,R10,R11,R12,R13,R14,R15)
  
  
  S1<-sum(Column1 %in% "S")/(length(Column1)-spaces1)
  S2<-sum(Column2 %in% "S")/(length(Column2)-spaces2)
  S3<-sum(Column3 %in% "S")/(length(Column3)-spaces3)
  S4<-sum(Column4 %in% "S")/(length(Column4)-spaces4)
  S5<-sum(Column5 %in% "S")/(length(Column5)-spaces5)
  S6<-sum(Column6 %in% "S")/(length(Column6)-spaces6)
  S7<-sum(Column7 %in% "S")/(length(Column7)-spaces7)
  S8<-sum(Column8 %in% "S")/(length(Column8)-spaces8)
  S9<-sum(Column9 %in% "S")/(length(Column9)-spaces9)
  S10<-sum(Column10 %in% "S")/(length(Column10)-spaces10)
  S11<-sum(Column11 %in% "S")/(length(Column11)-spaces11)
  S12<-sum(Column12 %in% "S")/(length(Column12)-spaces12)
  S13<-sum(Column13 %in% "S")/(length(Column13)-spaces13)
  S14<-sum(Column14 %in% "S")/(length(Column14)-spaces14)
  S15<-sum(Column15 %in% "S")/(length(Column15)-spaces15)
  SllSs<-cbind(S1,S2,S3,S4,S5,S6,S7,S8,S9,S10,S11,S12,S13,S14,S15)
  
  
  T1<-sum(Column1 %in% "T")/(length(Column1)-spaces1)
  T2<-sum(Column2 %in% "T")/(length(Column2)-spaces2)
  T3<-sum(Column3 %in% "T")/(length(Column3)-spaces3)
  T4<-sum(Column4 %in% "T")/(length(Column4)-spaces4)
  T5<-sum(Column5 %in% "T")/(length(Column5)-spaces5)
  T6<-sum(Column6 %in% "T")/(length(Column6)-spaces6)
  T7<-sum(Column7 %in% "T")/(length(Column7)-spaces7)
  T8<-sum(Column8 %in% "T")/(length(Column8)-spaces8)
  T9<-sum(Column9 %in% "T")/(length(Column9)-spaces9)
  T10<-sum(Column10 %in% "T")/(length(Column10)-spaces10)
  T11<-sum(Column11 %in% "T")/(length(Column11)-spaces11)
  T12<-sum(Column12 %in% "T")/(length(Column12)-spaces12)
  T13<-sum(Column13 %in% "T")/(length(Column13)-spaces13)
  T14<-sum(Column14 %in% "T")/(length(Column14)-spaces14)
  T15<-sum(Column15 %in% "T")/(length(Column15)-spaces15)
  TllTs<-cbind(T1,T2,T3,T4,T5,T6,T7,T8,T9,T10,T11,T12,T13,T14,T15)
  
  
  V1<-sum(Column1 %in% "V")/(length(Column1)-spaces1)
  V2<-sum(Column2 %in% "V")/(length(Column2)-spaces2)
  V3<-sum(Column3 %in% "V")/(length(Column3)-spaces3)
  V4<-sum(Column4 %in% "V")/(length(Column4)-spaces4)
  V5<-sum(Column5 %in% "V")/(length(Column5)-spaces5)
  V6<-sum(Column6 %in% "V")/(length(Column6)-spaces6)
  V7<-sum(Column7 %in% "V")/(length(Column7)-spaces7)
  V8<-sum(Column8 %in% "V")/(length(Column8)-spaces8)
  V9<-sum(Column9 %in% "V")/(length(Column9)-spaces9)
  V10<-sum(Column10 %in% "V")/(length(Column10)-spaces10)
  V11<-sum(Column11 %in% "V")/(length(Column11)-spaces11)
  V12<-sum(Column12 %in% "V")/(length(Column12)-spaces12)
  V13<-sum(Column13 %in% "V")/(length(Column13)-spaces13)
  V14<-sum(Column14 %in% "V")/(length(Column14)-spaces14)
  V15<-sum(Column15 %in% "V")/(length(Column15)-spaces15)
  VllVs<-cbind(V1,V2,V3,V4,V5,V6,V7,V8,V9,V10,V11,V12,V13,V14,V15)
  
  
  W1<-sum(Column1 %in% "W")/(length(Column1)-spaces1)
  W2<-sum(Column2 %in% "W")/(length(Column2)-spaces2)
  W3<-sum(Column3 %in% "W")/(length(Column3)-spaces3)
  W4<-sum(Column4 %in% "W")/(length(Column4)-spaces4)
  W5<-sum(Column5 %in% "W")/(length(Column5)-spaces5)
  W6<-sum(Column6 %in% "W")/(length(Column6)-spaces6)
  W7<-sum(Column7 %in% "W")/(length(Column7)-spaces7)
  W8<-sum(Column8 %in% "W")/(length(Column8)-spaces8)
  W9<-sum(Column9 %in% "W")/(length(Column9)-spaces9)
  W10<-sum(Column10 %in% "W")/(length(Column10)-spaces10)
  W11<-sum(Column11 %in% "W")/(length(Column11)-spaces11)
  W12<-sum(Column12 %in% "W")/(length(Column12)-spaces12)
  W13<-sum(Column13 %in% "W")/(length(Column13)-spaces13)
  W14<-sum(Column14 %in% "W")/(length(Column14)-spaces14)
  W15<-sum(Column15 %in% "W")/(length(Column15)-spaces15)
  WllWs<-cbind(W1,W2,W3,W4,W5,W6,W7,W8,W9,W10,W11,W12,W13,W14,W15)
  
  
  Y1<-sum(Column1 %in% "Y")/(length(Column1)-spaces1)
  Y2<-sum(Column2 %in% "Y")/(length(Column2)-spaces2)
  Y3<-sum(Column3 %in% "Y")/(length(Column3)-spaces3)
  Y4<-sum(Column4 %in% "Y")/(length(Column4)-spaces4)
  Y5<-sum(Column5 %in% "Y")/(length(Column5)-spaces5)
  Y6<-sum(Column6 %in% "Y")/(length(Column6)-spaces6)
  Y7<-sum(Column7 %in% "Y")/(length(Column7)-spaces7)
  Y8<-sum(Column8 %in% "Y")/(length(Column8)-spaces8)
  Y9<-sum(Column9 %in% "Y")/(length(Column9)-spaces9)
  Y10<-sum(Column10 %in% "Y")/(length(Column10)-spaces10)
  Y11<-sum(Column11 %in% "Y")/(length(Column11)-spaces11)
  Y12<-sum(Column12 %in% "Y")/(length(Column12)-spaces12)
  Y13<-sum(Column13 %in% "Y")/(length(Column13)-spaces13)
  Y14<-sum(Column14 %in% "Y")/(length(Column14)-spaces14)
  Y15<-sum(Column15 %in% "Y")/(length(Column15)-spaces15)
  YllYs<-cbind(Y1,Y2,Y3,Y4,Y5,Y6,Y7,Y8,Y9,Y10,Y11,Y12,Y13,Y14,Y15)
}
#this is substrate percents

#A C D E F G H I K L N P Q R S T V W Y

PercentTable<-rbind(AllAs,CllCs,DllDs,EllEs,FllFs,GllGs,HllHs,IllIs,KllKs,LllLs,MllMs,NllNs,PllPs,QllQs,RllRs,SllSs,TllTs,VllVs,WllWs,YllYs)
PercentTable<-PercentTable*100

#create the SD table
SDtable<-matrix(data = rep(1,times=(nrow(PercentTable)*ncol(PercentTable))),nrow = nrow(PercentTable),ncol = ncol(PercentTable))
#for every row, a percertage minus the same mean over the same SD
if(1==1){
  SDtable[1,]<-(PercentTable[1,]-Amean)/Asd
  SDtable[2,]<-(PercentTable[2,]-Cmean)/Csd
  SDtable[3,]<-(PercentTable[3,]-Dmean)/Dsd
  SDtable[4,]<-(PercentTable[4,]-Emean)/Esd
  SDtable[5,]<-(PercentTable[5,]-Fmean)/Fsd
  SDtable[6,]<-(PercentTable[6,]-Gmean)/Gsd
  SDtable[7,]<-(PercentTable[7,]-Hmean)/Hsd
  SDtable[8,]<-(PercentTable[8,]-Imean)/Isd
  SDtable[9,]<-(PercentTable[9,]-Kmean)/Ksd
  SDtable[10,]<-(PercentTable[10,]-Lmean)/Lsd
  SDtable[11,]<-(PercentTable[11,]-Mmean)/Msd
  SDtable[12,]<-(PercentTable[12,]-Nmean)/Nsd
  SDtable[13,]<-(PercentTable[13,]-Pmean)/Psd
  SDtable[14,]<-(PercentTable[14,]-Qmean)/Qsd
  SDtable[15,]<-(PercentTable[15,]-Rmean)/Rsd
  SDtable[16,]<-(PercentTable[16,]-Smean)/Ssd
  SDtable[17,]<-(PercentTable[17,]-Tmean)/Tsd
  SDtable[18,]<-(PercentTable[18,]-Vmean)/Vsd
  SDtable[19,]<-(PercentTable[19,]-Wmean)/Wsd
  SDtable[20,]<-(PercentTable[20,]-Ymean)/Ysd
}


SetOfAAs<-c("Letter","A","C","D","E","F","G","H","I","K","L","M","N","P","Q","R","S","T","V","W","Y")


SumOfSigmaAAs<-c(1:15)

for (i in 1:15){
  SumOfSigmasValue<-0
  for (j in 1:20){
        value<-0
    if (SDtable[j,i]>2){
      value<-sum(substrates[,i]==SetOfAAs[j])
    }
    SumOfSigmasValue<-SumOfSigmasValue+value
  }
  SumOfSigmaAAs[i]<-SumOfSigmasValue
}

# AAs1<-length(substrates[,1])-sum(substrates[,1]=="")
# AAs2<-length(substrates[,2])-sum(substrates[,2]=="")
# AAs3<-length(substrates[,3])-sum(substrates[,3]=="")
# AAs4<-length(substrates[,4])-sum(substrates[,4]=="")
# AAs5<-length(substrates[,5])-sum(substrates[,5]=="")
# AAs6<-length(substrates[,6])-sum(substrates[,6]=="")
# AAs7<-length(substrates[,7])-sum(substrates[,7]=="")
# AAs8<-length(substrates[,8])-sum(substrates[,8]=="")
# AAs9<-length(substrates[,9])-sum(substrates[,9]=="")
# 
# 
# 
# #AAsAtPositions<-c(AAs1,AAs2,AAs3,AAs4,AAs5,AAs6,AAs7,AAs8,AAs9)
# AAsAtPositions<-c(length(substrates[,1]),length(substrates[,2]),length(substrates[,3]),length(substrates[,4]),
#                   length(substrates[,5]),length(substrates[,6]),length(substrates[,7]),length(substrates[,8]),
#                   length(substrates[,9]))

SumOfExpectedSigmaAAs<-c(1:15)
for (i in 1:15){
  ExpectedValue<-0
  for (j in 1:20){
        value<-0
    if (SDtable[j,i]>2){
      value<-AllMeans[j]
    }
    ExpectedValue<-ExpectedValue+value
  }
  SumOfExpectedSigmaAAs[i]<-ExpectedValue*(length(substrates[,i])-sum(substrates[,i]%in% ""))/100
}

SelectivityRow<-SumOfSigmaAAs/SumOfExpectedSigmaAAs
SelectivitySheet<-rbind(SumOfSigmaAAs,SumOfExpectedSigmaAAs,SelectivityRow)

SetOfAAs<-matrix(data = SetOfAAs,ncol = 1)

SDtableu<-SDtable
HeaderSD<-c(-7:7)
SDtable<-rbind(HeaderSD,SDtableu)
row.names(SDtable)<-NULL
SDtable<-data.frame(SetOfAAs,SDtable)

PercentTable<-rbind(HeaderSD,PercentTable)
row.names(PercentTable)<-NULL
PercentTable<-data.frame(SetOfAAs,PercentTable)
numberofY<-as.numeric(SubstrateBackgroundFrequency$Number.of.Y)
numberofY<-numberofY[!is.na(numberofY)]

numberofPY<-as.numeric(SubstrateBackgroundFrequency$Number.of.pY)
numberofPY<-numberofPY[!is.na(numberofPY)]

NormalizationScore<-sum(numberofPY)/sum(numberofY)

# positions<-matrix(data = NA, nrow=20,ncol = 15)
# 
# #column1
# 
# for (q in 1:15) {
#   sA<-sum(substrates[,i]=="A")
#   positions[1,i]<-sA
#   sC<-sum(substrates[,i]=="C")
#   positions[2,i]<-sC
#   sD<-sum(substrates[,i]=="D")
#   positions[3,i]<-sD
#   sE<-sum(substrates[,i]=="E")
#   positions[4,i]<-sE
#   sF<-sum(substrates[,i]=="F")
#   sG<-sum(substrates[,i]=="G")
#   sH<-sum(substrates[,i]=="H")
#   sI<-sum(substrates[,i]=="I")
#   sK<-sum(substrates[,i]=="K")
#   sL<-sum(substrates[,i]=="L")
#   sM<-sum(substrates[,i]=="M")
#   sN<-sum(substrates[,i]=="N")
#   sP<-sum(substrates[,i]=="P")
#   sQ<-sum(substrates[,i]=="Q")
#   sR<-sum(substrates[,i]=="R")
#   sS<-sum(substrates[,i]=="S")
#   sT<-sum(substrates[,i]=="T")
#   sV<-sum(substrates[,i]=="V")
#   sW<-sum(substrates[,i]=="W")
#   sY<-sum(substrates[,i]=="Y")
#   positions[5,i]<-sF
#   positions[6,i]<-sG
#   positions[7,i]<-sH
#   positions[8,i]<-sI
#   positions[9,i]<-sK
#   positions[10,i]<-sL
#   positions[11,i]<-sM
#   positions[12,i]<-sN
#   positions[13,i]<-sP
#   positions[14,i]<-sQ
#   positions[15,i]<-sR
#   positions[16,i]<-sS
#   positions[17,i]<-sT
#   positions[18,i]<-sV
#   positions[19,i]<-sW
#   positions[20,i]<-sY
# }

#here I create the positions table which is needed for the endogenous prob matrix and is simply "how many times did an AA show up in this spot?
if (6==6){
  Column1<-substrates[,1]
  Column2<-substrates[,2]
  Column3<-substrates[,3]
  Column4<-substrates[,4]
  Column5<-substrates[,5]
  Column6<-substrates[,6]
  Column7<-substrates[,7]
  Column8<-substrates[,8]
  Column9<-substrates[,9]
  Column10<-substrates[,10]
  Column11<-substrates[,11]
  Column12<-substrates[,12]
  Column13<-substrates[,13]
  Column14<-substrates[,14]
  Column15<-substrates[,15]
  
  spaces1<-sum((Column1%in% ""))
  spaces2<-sum(Column2%in% "")
  spaces3<-sum(Column3%in% "")
  spaces4<-sum(Column4%in% "")
  spaces5<-sum(Column5%in% "")
  spaces6<-sum(Column6%in% "")
  spaces7<-sum(Column7%in% "")
  spaces8<-sum(Column8%in% "")
  spaces9<-sum(Column9%in% "")
  spaces10<-sum(Column10%in% "")
  spaces11<-sum(Column11%in% "")
  spaces12<-sum(Column12%in% "")
  spaces13<-sum(Column13%in% "")
  spaces14<-sum(Column14%in% "")
  spaces15<-sum(Column15%in% "")
  
  A1<-sum(Column1 %in% "A")
  A2<-sum(Column2 %in% "A")
  A3<-sum(Column3 %in% "A")
  A4<-sum(Column4 %in% "A")
  A5<-sum(Column5 %in% "A")
  A6<-sum(Column6 %in% "A")
  A7<-sum(Column7 %in% "A")
  A8<-sum(Column8 %in% "A")
  A9<-sum(Column9 %in% "A")
  A10<-sum(Column10 %in% "A")
  A11<-sum(Column11 %in% "A")
  A12<-sum(Column12 %in% "A")
  A13<-sum(Column13 %in% "A")
  A14<-sum(Column14 %in% "A")
  A15<-sum(Column15 %in% "A")
  AllAs<-cbind(A1,A2,A3,A4,A5,A6,A7,A8,A9,A10,A11,A12,A13,A14,A15)
  
  C1<-sum(Column1 %in% "C")
  C2<-sum(Column2 %in% "C")
  C3<-sum(Column3 %in% "C")
  C4<-sum(Column4 %in% "C")
  C5<-sum(Column5 %in% "C")
  C6<-sum(Column6 %in% "C")
  C7<-sum(Column7 %in% "C")
  C8<-sum(Column8 %in% "C")
  C9<-sum(Column9 %in% "C")  
  C10<-sum(Column10 %in% "C")
  C11<-sum(Column11 %in% "C")
  C12<-sum(Column12 %in% "C")
  C13<-sum(Column13 %in% "C")
  C14<-sum(Column14 %in% "C")
  C15<-sum(Column15 %in% "C")
  CllCs<-cbind(C1,C2,C3,C4,C5,C6,C7,C8,C9,C10,C11,C12,C13,C14,C15)
  
  D1<-sum(Column1 %in% "D")
  D2<-sum(Column2 %in% "D")
  D3<-sum(Column3 %in% "D")
  D4<-sum(Column4 %in% "D")
  D5<-sum(Column5 %in% "D")
  D6<-sum(Column6 %in% "D")
  D7<-sum(Column7 %in% "D")
  D8<-sum(Column8 %in% "D")
  D9<-sum(Column9 %in% "D")
  D10<-sum(Column10 %in% "D")
  D11<-sum(Column11 %in% "D")
  D12<-sum(Column12 %in% "D")
  D13<-sum(Column13 %in% "D")
  D14<-sum(Column14 %in% "D")
  D15<-sum(Column15 %in% "D")
  DllDs<-cbind(D1,D2,D3,D4,D5,D6,D7,D8,D9,D10,D11,D12,D13,D14,D15)
  
  E1<-sum(Column1 %in% "E")
  E2<-sum(Column2 %in% "E")
  E3<-sum(Column3 %in% "E")
  E4<-sum(Column4 %in% "E")
  E5<-sum(Column5 %in% "E")
  E6<-sum(Column6 %in% "E")
  E7<-sum(Column7 %in% "E")
  E8<-sum(Column8 %in% "E")
  E9<-sum(Column9 %in% "E")
  E10<-sum(Column10 %in% "E")
  E11<-sum(Column11 %in% "E")
  E12<-sum(Column12 %in% "E")
  E13<-sum(Column13 %in% "E")
  E14<-sum(Column14 %in% "E")
  E15<-sum(Column15 %in% "E")
  EllEs<-cbind(E1,E2,E3,E4,E5,E6,E7,E8,E9,E10,E11,E12,E13,E14,E15)
  
  F1<-sum(Column1 %in% "F")
  F2<-sum(Column2 %in% "F")
  F3<-sum(Column3 %in% "F")
  F4<-sum(Column4 %in% "F")
  F5<-sum(Column5 %in% "F")
  F6<-sum(Column6 %in% "F")
  F7<-sum(Column7 %in% "F")
  F8<-sum(Column8 %in% "F")
  F9<-sum(Column9 %in% "F")
  F10<-sum(Column10 %in% "F")
  F11<-sum(Column11 %in% "F")
  F12<-sum(Column12 %in% "F")
  F13<-sum(Column13 %in% "F")
  F14<-sum(Column14 %in% "F")
  F15<-sum(Column15 %in% "F")
  FllFs<-cbind(F1,F2,F3,F4,F5,F6,F7,F8,F9,F10,F11,F12,F13,F14,F15)
  
  G1<-sum(Column1 %in% "G")
  G2<-sum(Column2 %in% "G")
  G3<-sum(Column3 %in% "G")
  G4<-sum(Column4 %in% "G")
  G5<-sum(Column5 %in% "G")
  G6<-sum(Column6 %in% "G")
  G7<-sum(Column7 %in% "G")
  G8<-sum(Column8 %in% "G")
  G9<-sum(Column9 %in% "G")
  G10<-sum(Column10 %in% "G")
  G11<-sum(Column11 %in% "G")
  G12<-sum(Column12 %in% "G")
  G13<-sum(Column13 %in% "G")
  G14<-sum(Column14 %in% "G")
  G15<-sum(Column15 %in% "G")
  GllGs<-cbind(G1,G2,G3,G4,G5,G6,G7,G8,G9,G10,G11,G12,G13,G14,G15)
  
  H1<-sum(Column1 %in% "H")
  H2<-sum(Column2 %in% "H")
  H3<-sum(Column3 %in% "H")
  H4<-sum(Column4 %in% "H")
  H5<-sum(Column5 %in% "H")
  H6<-sum(Column6 %in% "H")
  H7<-sum(Column7 %in% "H")
  H8<-sum(Column8 %in% "H")
  H9<-sum(Column9 %in% "H")
  H10<-sum(Column10 %in% "H")
  H11<-sum(Column11 %in% "H")
  H12<-sum(Column12 %in% "H")
  H13<-sum(Column13 %in% "H")
  H14<-sum(Column14 %in% "H")
  H15<-sum(Column15 %in% "H")
  HllHs<-cbind(H1,H2,H3,H4,H5,H6,H7,H8,H9,H10,H11,H12,H13,H14,H15)
  
  I1<-sum(Column1 %in% "I")
  I2<-sum(Column2 %in% "I")
  I3<-sum(Column3 %in% "I")
  I4<-sum(Column4 %in% "I")
  I5<-sum(Column5 %in% "I")
  I6<-sum(Column6 %in% "I")
  I7<-sum(Column7 %in% "I")
  I8<-sum(Column8 %in% "I")
  I9<-sum(Column9 %in% "I")
  I10<-sum(Column10 %in% "I")
  I11<-sum(Column11 %in% "I")
  I12<-sum(Column12 %in% "I")
  I13<-sum(Column13 %in% "I")
  I14<-sum(Column14 %in% "I")
  I15<-sum(Column15 %in% "I")
  IllIs<-cbind(I1,I2,I3,I4,I5,I6,I7,I8,I9,I10,I11,I12,I13,I14,I15)
  
  K1<-sum(Column1 %in% "K")
  K2<-sum(Column2 %in% "K")
  K3<-sum(Column3 %in% "K")
  K4<-sum(Column4 %in% "K")
  K5<-sum(Column5 %in% "K")
  K6<-sum(Column6 %in% "K")
  K7<-sum(Column7 %in% "K")
  K8<-sum(Column8 %in% "K")
  K9<-sum(Column9 %in% "K")
  K10<-sum(Column10 %in% "K")
  K11<-sum(Column11 %in% "K")
  K12<-sum(Column12 %in% "K")
  K13<-sum(Column13 %in% "K")
  K14<-sum(Column14 %in% "K")
  K15<-sum(Column15 %in% "K")
  KllKs<-cbind(K1,K2,K3,K4,K5,K6,K7,K8,K9,K10,K11,K12,K13,K14,K15)
  
  L1<-sum(Column1 %in% "L")
  L2<-sum(Column2 %in% "L")
  L3<-sum(Column3 %in% "L")
  L4<-sum(Column4 %in% "L")
  L5<-sum(Column5 %in% "L")
  L6<-sum(Column6 %in% "L")
  L7<-sum(Column7 %in% "L")
  L8<-sum(Column8 %in% "L")
  L9<-sum(Column9 %in% "L")
  L10<-sum(Column10 %in% "L")
  L11<-sum(Column11 %in% "L")
  L12<-sum(Column12 %in% "L")
  L13<-sum(Column13 %in% "L")
  L14<-sum(Column14 %in% "L")
  L15<-sum(Column15 %in% "L")
  LllLs<-cbind(L1,L2,L3,L4,L5,L6,L7,L8,L9,L10,L11,L12,L13,L14,L15)
  
  M1<-sum(Column1 %in% "M")
  M2<-sum(Column2 %in% "M")
  M3<-sum(Column3 %in% "M")
  M4<-sum(Column4 %in% "M")
  M5<-sum(Column5 %in% "M")
  M6<-sum(Column6 %in% "M")
  M7<-sum(Column7 %in% "M")
  M8<-sum(Column8 %in% "M")
  M9<-sum(Column9 %in% "M")
  M10<-sum(Column10 %in% "M")
  M11<-sum(Column11 %in% "M")
  M12<-sum(Column12 %in% "M")
  M13<-sum(Column13 %in% "M")
  M14<-sum(Column14 %in% "M")
  M15<-sum(Column15 %in% "M")
  MllMs<-cbind(M1,M2,M3,M4,M5,M6,M7,M8,M9,M10,M11,M12,M13,M14,M15)
  
  N1<-sum(Column1 %in% "N")
  N2<-sum(Column2 %in% "N")
  N3<-sum(Column3 %in% "N")
  N4<-sum(Column4 %in% "N")
  N5<-sum(Column5 %in% "N")
  N6<-sum(Column6 %in% "N")
  N7<-sum(Column7 %in% "N")
  N8<-sum(Column8 %in% "N")
  N9<-sum(Column9 %in% "N")
  N10<-sum(Column10 %in% "N")
  N11<-sum(Column11 %in% "N")
  N12<-sum(Column12 %in% "N")
  N13<-sum(Column13 %in% "N")
  N14<-sum(Column14 %in% "N")
  N15<-sum(Column15 %in% "N")
  NllNs<-cbind(N1,N2,N3,N4,N5,N6,N7,N8,N9,N10,N11,N12,N13,N14,N15)
  
  P1<-sum(Column1 %in% "P")
  P2<-sum(Column2 %in% "P")
  P3<-sum(Column3 %in% "P")
  P4<-sum(Column4 %in% "P")
  P5<-sum(Column5 %in% "P")
  P6<-sum(Column6 %in% "P")
  P7<-sum(Column7 %in% "P")
  P8<-sum(Column8 %in% "P")
  P9<-sum(Column9 %in% "P")
  P10<-sum(Column10 %in% "P")
  P11<-sum(Column11 %in% "P")
  P12<-sum(Column12 %in% "P")
  P13<-sum(Column13 %in% "P")
  P14<-sum(Column14 %in% "P")
  P15<-sum(Column15 %in% "P")
  PllPs<-cbind(P1,P2,P3,P4,P5,P6,P7,P8,P9,P10,P11,P12,P13,P14,P15)
  
  Q1<-sum(Column1 %in% "Q")
  Q2<-sum(Column2 %in% "Q")
  Q3<-sum(Column3 %in% "Q")
  Q4<-sum(Column4 %in% "Q")
  Q5<-sum(Column5 %in% "Q")
  Q6<-sum(Column6 %in% "Q")
  Q7<-sum(Column7 %in% "Q")
  Q8<-sum(Column8 %in% "Q")
  Q9<-sum(Column9 %in% "Q")
  Q10<-sum(Column10 %in% "Q")
  Q11<-sum(Column11 %in% "Q")
  Q12<-sum(Column12 %in% "Q")
  Q13<-sum(Column13 %in% "Q")
  Q14<-sum(Column14 %in% "Q")
  Q15<-sum(Column15 %in% "Q")
  QllQs<-cbind(Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q8,Q9,Q10,Q11,Q12,Q13,Q14,Q15)
  
  R1<-sum(Column1 %in% "R")
  R2<-sum(Column2 %in% "R")
  R3<-sum(Column3 %in% "R")
  R4<-sum(Column4 %in% "R")
  R5<-sum(Column5 %in% "R")
  R6<-sum(Column6 %in% "R")
  R7<-sum(Column7 %in% "R")
  R8<-sum(Column8 %in% "R")
  R9<-sum(Column9 %in% "R")
  R10<-sum(Column10 %in% "R")
  R11<-sum(Column11 %in% "R")
  R12<-sum(Column12 %in% "R")
  R13<-sum(Column13 %in% "R")
  R14<-sum(Column14 %in% "R")
  R15<-sum(Column15 %in% "R")
  RllRs<-cbind(R1,R2,R3,R4,R5,R6,R7,R8,R9,R10,R11,R12,R13,R14,R15)
  
  S1<-sum(Column1 %in% "S")
  S2<-sum(Column2 %in% "S")
  S3<-sum(Column3 %in% "S")
  S4<-sum(Column4 %in% "S")
  S5<-sum(Column5 %in% "S")
  S6<-sum(Column6 %in% "S")
  S7<-sum(Column7 %in% "S")
  S8<-sum(Column8 %in% "S")
  S9<-sum(Column9 %in% "S")
  S10<-sum(Column10 %in% "S")
  S11<-sum(Column11 %in% "S")
  S12<-sum(Column12 %in% "S")
  S13<-sum(Column13 %in% "S")
  S14<-sum(Column14 %in% "S")
  S15<-sum(Column15 %in% "S")
  SllSs<-cbind(S1,S2,S3,S4,S5,S6,S7,S8,S9,S10,S11,S12,S13,S14,S15)
  
  T1<-sum(Column1 %in% "T")
  T2<-sum(Column2 %in% "T")
  T3<-sum(Column3 %in% "T")
  T4<-sum(Column4 %in% "T")
  T5<-sum(Column5 %in% "T")
  T6<-sum(Column6 %in% "T")
  T7<-sum(Column7 %in% "T")
  T8<-sum(Column8 %in% "T")
  T9<-sum(Column9 %in% "T")
  T10<-sum(Column10 %in% "T")
  T11<-sum(Column11 %in% "T")
  T12<-sum(Column12 %in% "T")
  T13<-sum(Column13 %in% "T")
  T14<-sum(Column14 %in% "T")
  T15<-sum(Column15 %in% "T")
  TllTs<-cbind(T1,T2,T3,T4,T5,T6,T7,T8,T9,T10,T11,T12,T13,T14,T15)
  
  V1<-sum(Column1 %in% "V")
  V2<-sum(Column2 %in% "V")
  V3<-sum(Column3 %in% "V")
  V4<-sum(Column4 %in% "V")
  V5<-sum(Column5 %in% "V")
  V6<-sum(Column6 %in% "V")
  V7<-sum(Column7 %in% "V")
  V8<-sum(Column8 %in% "V")
  V9<-sum(Column9 %in% "V")
  V10<-sum(Column10 %in% "V")
  V11<-sum(Column11 %in% "V")
  V12<-sum(Column12 %in% "V")
  V13<-sum(Column13 %in% "V")
  V14<-sum(Column14 %in% "V")
  V15<-sum(Column15 %in% "V")
  VllVs<-cbind(V1,V2,V3,V4,V5,V6,V7,V8,V9,V10,V11,V12,V13,V14,V15)
  
  W1<-sum(Column1 %in% "W")
  W2<-sum(Column2 %in% "W")
  W3<-sum(Column3 %in% "W")
  W4<-sum(Column4 %in% "W")
  W5<-sum(Column5 %in% "W")
  W6<-sum(Column6 %in% "W")
  W7<-sum(Column7 %in% "W")
  W8<-sum(Column8 %in% "W")
  W9<-sum(Column9 %in% "W")
  W10<-sum(Column10 %in% "W")
  W11<-sum(Column11 %in% "W")
  W12<-sum(Column12 %in% "W")
  W13<-sum(Column13 %in% "W")
  W14<-sum(Column14 %in% "W")
  W15<-sum(Column15 %in% "W")
  WllWs<-cbind(W1,W2,W3,W4,W5,W6,W7,W8,W9,W10,W11,W12,W13,W14,W15)
  
  Y1<-sum(Column1 %in% "Y")
  Y2<-sum(Column2 %in% "Y")
  Y3<-sum(Column3 %in% "Y")
  Y4<-sum(Column4 %in% "Y")
  Y5<-sum(Column5 %in% "Y")
  Y6<-sum(Column6 %in% "Y")
  Y7<-sum(Column7 %in% "Y")
  Y8<-sum(Column8 %in% "Y")
  Y9<-sum(Column9 %in% "Y")
  Y10<-sum(Column10 %in% "Y")
  Y11<-sum(Column11 %in% "Y")
  Y12<-sum(Column12 %in% "Y")
  Y13<-sum(Column13 %in% "Y")
  Y14<-sum(Column14 %in% "Y")
  Y15<-sum(Column15 %in% "Y")
  YllYs<-cbind(Y1,Y2,Y3,Y4,Y5,Y6,Y7,Y8,Y9,Y10,Y11,Y12,Y13,Y14,Y15)
  PositionTable<-rbind(AllAs,CllCs,DllDs,EllEs,FllFs,GllGs,HllHs,IllIs,KllKs,LllLs,MllMs,NllNs,PllPs,QllQs,RllRs,SllSs,TllTs,VllVs,WllWs,YllYs)
}
#endogenous prob matrix is AA position over subbackfreqmean
dim(PositionTable)
EPMtable<-PositionTable
# EPMtable[1,]<-(PositionTable[1,]/(PositionTable[1,]*.01*Amean))
# EPMtable[2,]<-(PositionTable[2,]/(PositionTable[2,]*.01*Cmean))
# EPMtable[3,]<-(PositionTable[3,]/(PositionTable[3,]*.01*Dmean))
# EPMtable[4,]<-(PositionTable[4,]/(PositionTable[4,]*.01*Emean))
# EPMtable[5,]<-(PositionTable[5,]/(PositionTable[5,]*.01*Fmean))
# EPMtable[6,]<-(PositionTable[6,]/(PositionTable[6,]*.01*Gmean))
# EPMtable[7,]<-(PositionTable[7,]/(PositionTable[7,]*.01*Hmean))
# EPMtable[8,]<-(PositionTable[8,]/(PositionTable[8,]*.01*Imean))
# EPMtable[9,]<-(PositionTable[9,]/(PositionTable[9,]*.01*Kmean))
# EPMtable[10,]<-(PositionTable[10,]/(PositionTable[10,]*.01*Lmean))
# EPMtable[11,]<-(PositionTable[11,]/(PositionTable[11,]*.01*Mmean))
# EPMtable[12,]<-(PositionTable[12,]/(PositionTable[12,]*.01*Nmean))
# EPMtable[13,]<-(PositionTable[13,]/(PositionTable[13,]*.01*Pmean))
# EPMtable[14,]<-(PositionTable[14,]/(PositionTable[14,]*.01*Qmean))
# EPMtable[15,]<-(PositionTable[15,]/(PositionTable[15,]*.01*Rmean))
# EPMtable[16,]<-(PositionTable[16,]/(PositionTable[16,]*.01*Smean))
# EPMtable[17,]<-(PositionTable[17,]/(PositionTable[17,]*.01*Tmean))
# EPMtable[18,]<-(PositionTable[18,]/(PositionTable[18,]*.01*Vmean))
# EPMtable[19,]<-(PositionTable[19,]/(PositionTable[19,]*.01*Wmean))
# EPMtable[20,]<-(PositionTable[20,]/(PositionTable[20,]*.01*Ymean))

columns<-c(length(Column1)-sum(Column1==""),
           length(Column2)-sum(Column2==""),
           length(Column3)-sum(Column3==""),
           length(Column4)-sum(Column4==""),
           length(Column5)-sum(Column5==""),
           length(Column6)-sum(Column6==""),
           length(Column7)-sum(Column7==""),
           length(Column8)-sum(Column8==""),
           length(Column9)-sum(Column9==""),
           length(Column10)-sum(Column10==""),
           length(Column11)-sum(Column11==""),
           length(Column12)-sum(Column12==""),
           length(Column13)-sum(Column13==""),
           length(Column14)-sum(Column14==""),
           length(Column15)-sum(Column15==""))

for (z in 1:15) {
  for (y in 1:20) {
    if (PositionTable[y,z]>0){
      EPMtable[y,z]<-PositionTable[y,z]/((columns[z]*.01*AllMeans[y]))
    }
    if (PositionTable[y,z]==0){
      EPMtable[y,z]<-(1/columns[z])/((columns[z]*.01*AllMeans[y]))
    }
  }
}
#here I created the endogenous probability matrix
#now all I need to do is make the program automatically determine which SDs are >2, and then make it perform screener and sorter on those SDs





# write.xlsx(SDtable,file=FILENAME, sheetName = "Standard Deviation Table",col.names = FALSE,row.names = FALSE,append = TRUE)
# write.xlsx(PercentTable,file = FILENAME,sheetName = "Percent Table",col.names = FALSE,row.names = FALSE,append = TRUE)
# write.xlsx(SelectivitySheet,file = FILENAME,sheetName = "Site Selectivity",col.names = FALSE,row.names = FALSE,append = TRUE)
# write.xlsx(EPMtable,file=FILENAME,sheetName = "Endogenous Probability Matrix",col.names = FALSE,row.names = FALSE,append = TRUE)
# write.xlsx(NormalizationScore,file = FILENAME,sheetName = "Normalization Score",col.names = FALSE,row.names = FALSE,append = TRUE)

NormalizationScore<-c("Normalization Score",NormalizationScore)

write.table(x=c("SD Table"),file=FILENAME,append = TRUE,sep=",", row.names = FALSE, col.names = FALSE)
write.table(SDtable,file=FILENAME,append = TRUE,sep=",", row.names = FALSE, col.names = FALSE)
write.table(x=c("Percent Table"),file=FILENAME,append = TRUE,sep=",", row.names = FALSE, col.names = FALSE)
write.table(PercentTable,file=FILENAME, append = TRUE,sep=",",row.names = FALSE, col.names = FALSE)

EPMtableu<-EPMtable
HeaderSD<-c(-7:7)
EPMtableu<-rbind(HeaderSD,EPMtableu)
row.names(EPMtableu)<-NULL
EPMtableu<-data.frame(SetOfAAs,EPMtableu)

write.table("Site Selectivity Matrix", file = FILENAME2, append = TRUE, sep = ",", row.names = FALSE, col.names = FALSE)
SelectivityHeader=matrix(data = c("Position",-7,-6,-5,-4,-3,-2,-1,0,1,2,3,4,5,6,7),nrow = 1)
head<-matrix(data=rep(" ",times=16),nrow = 1)
SelectivityHeader<-rbind(head,SelectivityHeader)

write.table(SelectivityHeader, file = FILENAME2, append = TRUE, sep = ",", row.names = FALSE, col.names = FALSE)
#colnames(SelectivitySheet)<-c("-7","-6","-5","-4","-3","-2","-1","0","1","2","3","4","5","6","7")
write.table(SelectivitySheet,file = FILENAME2, append = TRUE,sep = ",",row.names = TRUE, col.names = FALSE)
write.table(x=c("Endogenous Probability Matrix"),file=FILENAME2,append = TRUE,sep=",", row.names = FALSE, col.names = FALSE)
write.table(EPMtableu,file = FILENAME2, append = TRUE,sep = ",",row.names = FALSE, col.names = FALSE)
write.table(NormalizationScore, file = FILENAME2, append = TRUE,sep = ",",row.names = FALSE, col.names = FALSE)


































#test myself: this script should take in  amino acids for each of the 9 positions and give out every single combination of those AAs

#need to do following: fix it so that the accession numbers stay with the substrates,
#also the neg false constant is totaly unphos'd Ys found by FASTA-2-CSV system# uniprot

#HOW MANY: IF THERE'S two aas in each position you get 2^9, so I assume the numbers are:
#(number in position-4)*(number in position -3)*(number in position -2)...=total
# require(rJava)
# require(xlsxjars)
# require(xlsx)
# # require(readxl)

#View(SDtable)
bareSDs<-SDtable[2:21,2:16]
goodones<-bareSDs>2

Positionm7<-which(goodones[,1] %in% TRUE)
if (length(Positionm7)<1){Positionm7<-which(bareSDs[,1]==max(bareSDs[,1]))}
Positionm6<-which(goodones[,2] %in% TRUE)
if (length(Positionm6)<1){Positionm6<-which(bareSDs[,2]==max(bareSDs[,2]))}
Positionm5<-which(goodones[,3] %in% TRUE)
if (length(Positionm5)<1){Positionm5<-which(bareSDs[,3]==max(bareSDs[,3]))}
Positionm4<-which(goodones[,4] %in% TRUE)
if (length(Positionm4)<1){Positionm4<-which(bareSDs[,4]==max(bareSDs[,4]))}
Positionm3<-which(goodones[,5] %in% TRUE)
if (length(Positionm3)<1){Positionm3<-which(bareSDs[,5]==max(bareSDs[,5]))}
Positionm2<-which(goodones[,6] %in% TRUE)
if (length(Positionm2)<1){Positionm2<-which(bareSDs[,6]==max(bareSDs[,6]))}
Positionm1<-which(goodones[,7] %in% TRUE)
if (length(Positionm1)<1){Positionm1<-which(bareSDs[,7]==max(bareSDs[,7]))}

Positiond0<-which(goodones[,8] %in% TRUE)
if (length(Positiond0)<1){Positiond0<-which(bareSDs[,8]==max(bareSDs[,8]))}

Positionp1<-which(goodones[,9] %in% TRUE)
if (length(Positionp1)<1){Positionp1<-which(bareSDs[,9]==max(bareSDs[,9]))}
Positionp2<-which(goodones[,10] %in% TRUE)
if (length(Positionp2)<1){Positionp2<-which(bareSDs[,10]==max(bareSDs[,10]))}
Positionp3<-which(goodones[,11] %in% TRUE)
if (length(Positionp3)<1){Positionp3<-which(bareSDs[,11]==max(bareSDs[,11]))}
Positionp4<-which(goodones[,12] %in% TRUE)
if (length(Positionp4)<1){Positionp4<-which(bareSDs[,12]==max(bareSDs[,12]))}
Positionp5<-which(goodones[,13] %in% TRUE)
if (length(Positionp5)<1){Positionp5<-which(bareSDs[,13]==max(bareSDs[,13]))}
Positionp6<-which(goodones[,14] %in% TRUE)
if (length(Positionp6)<1){Positionp6<-which(bareSDs[,14]==max(bareSDs[,14]))}
Positionp7<-which(goodones[,15] %in% TRUE)
if (length(Positionp7)<1){Positionp7<-which(bareSDs[,15]==max(bareSDs[,15]))}

aa_props2 <- c("1"="A", "2"="C", "3"="D", "4"="E", "5"="F", "6"="G", "7"="H", "8"="I", "9"="K", "10"="L", "11"="M", "12"="N",
               "13"="P", "14"="Q", "15"="R", "16"="S", "17"="T", "18"="V", "19"="W", "20"="Y")

Positionm7<-sapply(Positionm7, function (x) aa_props2[x])
Positionm6<-sapply(Positionm6, function (x) aa_props2[x])
Positionm5<-sapply(Positionm5, function (x) aa_props2[x])
Positionm4<-sapply(Positionm4, function (x) aa_props2[x])
Positionm3<-sapply(Positionm3, function (x) aa_props2[x])
Positionm2<-sapply(Positionm2, function (x) aa_props2[x])
Positionm1<-sapply(Positionm1, function (x) aa_props2[x])
Positiond0<-sapply(Positiond0, function (x) aa_props2[x])
Positionp1<-sapply(Positionp1, function (x) aa_props2[x])
Positionp2<-sapply(Positionp2, function (x) aa_props2[x])
Positionp3<-sapply(Positionp3, function (x) aa_props2[x])
Positionp4<-sapply(Positionp4, function (x) aa_props2[x])
Positionp5<-sapply(Positionp5, function (x) aa_props2[x])
Positionp6<-sapply(Positionp6, function (x) aa_props2[x])
Positionp7<-sapply(Positionp7, function (x) aa_props2[x])


# Positionm7<-c("D","H","N","V")
# Positionm6<-c("E","V")
# Positionm5<-c("D","H")
# Positionm4<-c("D","N")
# Positionm3<-c("D","E","F","Q")
# Positionm2<-c("D","N","Q","S")
# Positionm1<-c("F","I","L")
# Positiond0<-c("Y")
# Positionp1<-c("A","E")
# Positionp2<-c("T","S","Q","E")
# Positionp3<-c("V")
# Positionp4<-c("K")
# Positionp5<-c("K")
# Positionp6<-c("K")
# Positionp7<-c("R")
#this is where the amino acids for each position are given.  m means minus, p mean plus
########################################
# ScreenerFilename<-"C:/Users/User Name/Desktop/UMN 2017 Spring/Parker Lab/Kinatest ID/Screener.xls"











screaner<-read.csv(ScreenerFilename, header = FALSE, stringsAsFactors = FALSE)


Abl<-screaner[2:25,]
Arg<-screaner[27:50,]
Btk<-screaner[52:75,]
Csk<-screaner[77:100,]
Fyn<-screaner[102:125,]
Hck<-screaner[127:150,]
JAK2<-screaner[152:175,]
Lck<-screaner[177:200,]
Lyn<-screaner[202:225,]
Pyk2<-screaner[227:250,]
Src<-screaner[252:275,]
Syk<-screaner[277:300,]
Yes<-screaner[302:325,]

#two questions: why are we doing BTK when we already have a bioninformatics page about it?
#two I reran everything and only get 96 positions of interest in the SD table









#Do_You_want_An_Excel_Output_Questionmark<-"NO"
GeneratedPeptidesFile<-"GeneratedPeptidesFile.csv"


# Abl<-read.xlsx("C:/Users/User Name/Desktop/UMN 2017 Spring/Parker Lab/Kinatest ID/Screener.xls", sheetIndex = 4)
# Arg<-read.xlsx("C:/Users/User Name/Desktop/UMN 2017 Spring/Parker Lab/Kinatest ID/Screener.xls", sheetIndex = 5)
# Btk<-read.xlsx("C:/Users/User Name/Desktop/UMN 2017 Spring/Parker Lab/Kinatest ID/Screener.xls", sheetIndex = 6)
# Csk<-read.xlsx("C:/Users/User Name/Desktop/UMN 2017 Spring/Parker Lab/Kinatest ID/Screener.xls", sheetIndex = 7)
# Fyn<-read.xlsx("C:/Users/User Name/Desktop/UMN 2017 Spring/Parker Lab/Kinatest ID/Screener.xls", sheetIndex = 8)
# Hck<-read.xlsx("C:/Users/User Name/Desktop/UMN 2017 Spring/Parker Lab/Kinatest ID/Screener.xls", sheetIndex = 9)
# JAK2<-read.xlsx("C:/Users/User Name/Desktop/UMN 2017 Spring/Parker Lab/Kinatest ID/Screener.xls", sheetIndex = 10)
# Lck<-read.xlsx("C:/Users/User Name/Desktop/UMN 2017 Spring/Parker Lab/Kinatest ID/Screener.xls", sheetIndex = 11)
# Lyn<-read.xlsx("C:/Users/User Name/Desktop/UMN 2017 Spring/Parker Lab/Kinatest ID/Screener.xls", sheetIndex = 12)
# Pyk2<-read.xlsx("C:/Users/User Name/Desktop/UMN 2017 Spring/Parker Lab/Kinatest ID/Screener.xls", sheetIndex = 13)
# Src<-read.xlsx("C:/Users/User Name/Desktop/UMN 2017 Spring/Parker Lab/Kinatest ID/Screener.xls", sheetIndex = 14)
# Syk<-read.xlsx("C:/Users/User Name/Desktop/UMN 2017 Spring/Parker Lab/Kinatest ID/Screener.xls", sheetIndex = 15)
# Yes<-read.xlsx("C:/Users/User Name/Desktop/UMN 2017 Spring/Parker Lab/Kinatest ID/Screener.xls", sheetIndex = 16)
# 


"A"=1
"C"=2
"D"=3
"E"=4
"F"=5
"G"=6
"H"=7
"I"=8
"K"=9
"L"=10
"M"=11
"N"=12
"P"=13
"Q"=14
"R"=15
"S"=16
"T"=17
"V"=18
"W"=19
"Y"=20

aa_props <- c("A"=A, "C"=C, "D"=D, "E"=E, "F"=F,"G"=G,"H"=H,"I"=I,"K"=K,"L"=L,"M"=M,"N"=N,"P"=P,"Q"=Q,"R"=R,
              "S"=S,"T"=T,"V"=V,"W"=W,"Y"=Y,"xY"=Y,"O"=21)

number15<-sapply(Positionm7, function (x) aa_props[x])
number14<-sapply(Positionm6, function (x) aa_props[x])
number13<-sapply(Positionm5, function (x) aa_props[x])
number1 <- sapply(Positionm4, function (x) aa_props[x])
number2 <- sapply(Positionm3, function (x) aa_props[x])
number3 <- sapply(Positionm2, function (x) aa_props[x])
number4 <- sapply(Positionm1, function (x) aa_props[x])
number5 <- sapply(Positiond0, function (x) aa_props[x])
number6 <- sapply(Positionp1, function (x) aa_props[x])
number7 <- sapply(Positionp2, function (x) aa_props[x])
number8 <- sapply(Positionp3, function (x) aa_props[x])
number9 <- sapply(Positionp4, function (x) aa_props[x])
number10<-sapply(Positionp5, function (x) aa_props[x])
number11<-sapply(Positionp6, function (x) aa_props[x])
number12<-sapply(Positionp7, function (x) aa_props[x])

# number1<-Positionm4
# number2<-Positionm3
# number3<-Positionm2
# number4<-Positionm1
# number5<-Positiond0
# number6<-Positionp1
# number7<-Positionp2
# number8<-Positionp3
# number9<-Positionp4

#############################
#here I create the Abl seqs with proper value for each number
if (1==0){
  Ablnumber1<- gsub("A",A,Ablnumber1,perl = TRUE)
  Ablnumber1<- gsub("C",C,Ablnumber1,perl = TRUE)
  Ablnumber1<- gsub("D",D,Ablnumber1,perl = TRUE)
  Ablnumber1<- gsub("E",E,Ablnumber1,perl = TRUE)
  Ablnumber1<- gsub("F",F,Ablnumber1,perl = TRUE)
  Ablnumber1<- gsub("G",G,Ablnumber1,perl = TRUE)
  Ablnumber1<- gsub("H",H,Ablnumber1,perl = TRUE)
  Ablnumber1<- gsub("I",I,Ablnumber1,perl = TRUE)
  Ablnumber1<- gsub("K",K,Ablnumber1,perl = TRUE)
  Ablnumber1<- gsub("L",L,Ablnumber1,perl = TRUE)
  Ablnumber1<- gsub("M",M,Ablnumber1,perl = TRUE)
  Ablnumber1<- gsub("N",N,Ablnumber1,perl = TRUE)
  Ablnumber1<- gsub("P",P,Ablnumber1,perl = TRUE)
  Ablnumber1<- gsub("Q",Q,Ablnumber1,perl = TRUE)
  Ablnumber1<- gsub("R",R,Ablnumber1,perl = TRUE)
  Ablnumber1<- gsub("S",S,Ablnumber1,perl = TRUE)
  Ablnumber1<- gsub("T",T,Ablnumber1,perl = TRUE)
  Ablnumber1<- gsub("V",V,Ablnumber1,perl = TRUE)
  Ablnumber1<- gsub("W",W,Ablnumber1,perl = TRUE)
  Ablnumber1<- gsub("Y",Y,Ablnumber1,perl = TRUE)
  
  Ablnumber2<- gsub("A",A,Ablnumber2,perl = TRUE)
  Ablnumber2<- gsub("C",C,Ablnumber2,perl = TRUE)
  Ablnumber2<- gsub("D",D,Ablnumber2,perl = TRUE)
  Ablnumber2<- gsub("E",E,Ablnumber2,perl = TRUE)
  Ablnumber2<- gsub("F",F,Ablnumber2,perl = TRUE)
  Ablnumber2<- gsub("G",G,Ablnumber2,perl = TRUE)
  Ablnumber2<- gsub("H",H,Ablnumber2,perl = TRUE)
  Ablnumber2<- gsub("I",I,Ablnumber2,perl = TRUE)
  Ablnumber2<- gsub("K",K,Ablnumber2,perl = TRUE)
  Ablnumber2<- gsub("L",L,Ablnumber2,perl = TRUE)
  Ablnumber2<- gsub("M",M,Ablnumber2,perl = TRUE)
  Ablnumber2<- gsub("N",N,Ablnumber2,perl = TRUE)
  Ablnumber2<- gsub("P",P,Ablnumber2,perl = TRUE)
  Ablnumber2<- gsub("Q",Q,Ablnumber2,perl = TRUE)
  Ablnumber2<- gsub("R",R,Ablnumber2,perl = TRUE)
  Ablnumber2<- gsub("S",S,Ablnumber2,perl = TRUE)
  Ablnumber2<- gsub("T",T,Ablnumber2,perl = TRUE)
  Ablnumber2<- gsub("V",V,Ablnumber2,perl = TRUE)
  Ablnumber2<- gsub("W",W,Ablnumber2,perl = TRUE)
  Ablnumber2<- gsub("Y",Y,Ablnumber2,perl = TRUE)
  
  Ablnumber3<- gsub("A",A,Ablnumber3,perl = TRUE)
  Ablnumber3<- gsub("C",C,Ablnumber3,perl = TRUE)
  Ablnumber3<- gsub("D",D,Ablnumber3,perl = TRUE)
  Ablnumber3<- gsub("E",E,Ablnumber3,perl = TRUE)
  Ablnumber3<- gsub("F",F,Ablnumber3,perl = TRUE)
  Ablnumber3<- gsub("G",G,Ablnumber3,perl = TRUE)
  Ablnumber3<- gsub("H",H,Ablnumber3,perl = TRUE)
  Ablnumber3<- gsub("I",I,Ablnumber3,perl = TRUE)
  Ablnumber3<- gsub("K",K,Ablnumber3,perl = TRUE)
  Ablnumber3<- gsub("L",L,Ablnumber3,perl = TRUE)
  Ablnumber3<- gsub("M",M,Ablnumber3,perl = TRUE)
  Ablnumber3<- gsub("N",N,Ablnumber3,perl = TRUE)
  Ablnumber3<- gsub("P",P,Ablnumber3,perl = TRUE)
  Ablnumber3<- gsub("Q",Q,Ablnumber3,perl = TRUE)
  Ablnumber3<- gsub("R",R,Ablnumber3,perl = TRUE)
  Ablnumber3<- gsub("S",S,Ablnumber3,perl = TRUE)
  Ablnumber3<- gsub("T",T,Ablnumber3,perl = TRUE)
  Ablnumber3<- gsub("V",V,Ablnumber3,perl = TRUE)
  Ablnumber3<- gsub("W",W,Ablnumber3,perl = TRUE)
  Ablnumber3<- gsub("Y",Y,Ablnumber3,perl = TRUE)
  
  Ablnumber4<- gsub("A",A,Ablnumber4,perl = TRUE)
  Ablnumber4<- gsub("C",C,Ablnumber4,perl = TRUE)
  Ablnumber4<- gsub("D",D,Ablnumber4,perl = TRUE)
  Ablnumber4<- gsub("E",E,Ablnumber4,perl = TRUE)
  Ablnumber4<- gsub("F",F,Ablnumber4,perl = TRUE)
  Ablnumber4<- gsub("G",G,Ablnumber4,perl = TRUE)
  Ablnumber4<- gsub("H",H,Ablnumber4,perl = TRUE)
  Ablnumber4<- gsub("I",I,Ablnumber4,perl = TRUE)
  Ablnumber4<- gsub("K",K,Ablnumber4,perl = TRUE)
  Ablnumber4<- gsub("L",L,Ablnumber4,perl = TRUE)
  Ablnumber4<- gsub("M",M,Ablnumber4,perl = TRUE)
  Ablnumber4<- gsub("N",N,Ablnumber4,perl = TRUE)
  Ablnumber4<- gsub("P",P,Ablnumber4,perl = TRUE)
  Ablnumber4<- gsub("Q",Q,Ablnumber4,perl = TRUE)
  Ablnumber4<- gsub("R",R,Ablnumber4,perl = TRUE)
  Ablnumber4<- gsub("S",S,Ablnumber4,perl = TRUE)
  Ablnumber4<- gsub("T",T,Ablnumber4,perl = TRUE)
  Ablnumber4<- gsub("V",V,Ablnumber4,perl = TRUE)
  Ablnumber4<- gsub("W",W,Ablnumber4,perl = TRUE)
  Ablnumber4<- gsub("Y",Y,Ablnumber4,perl = TRUE)
  
  Ablnumber5<- gsub("A",A,Ablnumber5,perl = TRUE)
  Ablnumber5<- gsub("C",C,Ablnumber5,perl = TRUE)
  Ablnumber5<- gsub("D",D,Ablnumber5,perl = TRUE)
  Ablnumber5<- gsub("E",E,Ablnumber5,perl = TRUE)
  Ablnumber5<- gsub("F",F,Ablnumber5,perl = TRUE)
  Ablnumber5<- gsub("G",G,Ablnumber5,perl = TRUE)
  Ablnumber5<- gsub("H",H,Ablnumber5,perl = TRUE)
  Ablnumber5<- gsub("I",I,Ablnumber5,perl = TRUE)
  Ablnumber5<- gsub("K",K,Ablnumber5,perl = TRUE)
  Ablnumber5<- gsub("L",L,Ablnumber5,perl = TRUE)
  Ablnumber5<- gsub("M",M,Ablnumber5,perl = TRUE)
  Ablnumber5<- gsub("N",N,Ablnumber5,perl = TRUE)
  Ablnumber5<- gsub("P",P,Ablnumber5,perl = TRUE)
  Ablnumber5<- gsub("Q",Q,Ablnumber5,perl = TRUE)
  Ablnumber5<- gsub("R",R,Ablnumber5,perl = TRUE)
  Ablnumber5<- gsub("S",S,Ablnumber5,perl = TRUE)
  Ablnumber5<- gsub("T",T,Ablnumber5,perl = TRUE)
  Ablnumber5<- gsub("V",V,Ablnumber5,perl = TRUE)
  Ablnumber5<- gsub("W",W,Ablnumber5,perl = TRUE)
  Ablnumber5<- gsub("Y",Y,Ablnumber5,perl = TRUE)
  
  Ablnumber6<- gsub("A",A,Ablnumber6,perl = TRUE)
  Ablnumber6<- gsub("C",C,Ablnumber6,perl = TRUE)
  Ablnumber6<- gsub("D",D,Ablnumber6,perl = TRUE)
  Ablnumber6<- gsub("E",E,Ablnumber6,perl = TRUE)
  Ablnumber6<- gsub("F",F,Ablnumber6,perl = TRUE)
  Ablnumber6<- gsub("G",G,Ablnumber6,perl = TRUE)
  Ablnumber6<- gsub("H",H,Ablnumber6,perl = TRUE)
  Ablnumber6<- gsub("I",I,Ablnumber6,perl = TRUE)
  Ablnumber6<- gsub("K",K,Ablnumber6,perl = TRUE)
  Ablnumber6<- gsub("L",L,Ablnumber6,perl = TRUE)
  Ablnumber6<- gsub("M",M,Ablnumber6,perl = TRUE)
  Ablnumber6<- gsub("N",N,Ablnumber6,perl = TRUE)
  Ablnumber6<- gsub("P",P,Ablnumber6,perl = TRUE)
  Ablnumber6<- gsub("Q",Q,Ablnumber6,perl = TRUE)
  Ablnumber6<- gsub("R",R,Ablnumber6,perl = TRUE)
  Ablnumber6<- gsub("S",S,Ablnumber6,perl = TRUE)
  Ablnumber6<- gsub("T",T,Ablnumber6,perl = TRUE)
  Ablnumber6<- gsub("V",V,Ablnumber6,perl = TRUE)
  Ablnumber6<- gsub("W",W,Ablnumber6,perl = TRUE)
  Ablnumber6<- gsub("Y",Y,Ablnumber6,perl = TRUE)
  
  Ablnumber7<- gsub("A",A,Ablnumber7,perl = TRUE)
  Ablnumber7<- gsub("C",C,Ablnumber7,perl = TRUE)
  Ablnumber7<- gsub("D",D,Ablnumber7,perl = TRUE)
  Ablnumber7<- gsub("E",E,Ablnumber7,perl = TRUE)
  Ablnumber7<- gsub("F",F,Ablnumber7,perl = TRUE)
  Ablnumber7<- gsub("G",G,Ablnumber7,perl = TRUE)
  Ablnumber7<- gsub("H",H,Ablnumber7,perl = TRUE)
  Ablnumber7<- gsub("I",I,Ablnumber7,perl = TRUE)
  Ablnumber7<- gsub("K",K,Ablnumber7,perl = TRUE)
  Ablnumber7<- gsub("L",L,Ablnumber7,perl = TRUE)
  Ablnumber7<- gsub("M",M,Ablnumber7,perl = TRUE)
  Ablnumber7<- gsub("N",N,Ablnumber7,perl = TRUE)
  Ablnumber7<- gsub("P",P,Ablnumber7,perl = TRUE)
  Ablnumber7<- gsub("Q",Q,Ablnumber7,perl = TRUE)
  Ablnumber7<- gsub("R",R,Ablnumber7,perl = TRUE)
  Ablnumber7<- gsub("S",S,Ablnumber7,perl = TRUE)
  Ablnumber7<- gsub("T",T,Ablnumber7,perl = TRUE)
  Ablnumber7<- gsub("V",V,Ablnumber7,perl = TRUE)
  Ablnumber7<- gsub("W",W,Ablnumber7,perl = TRUE)
  Ablnumber7<- gsub("Y",Y,Ablnumber7,perl = TRUE)
  
  Ablnumber8<- gsub("A",A,Ablnumber8,perl = TRUE)
  Ablnumber8<- gsub("C",C,Ablnumber8,perl = TRUE)
  Ablnumber8<- gsub("D",D,Ablnumber8,perl = TRUE)
  Ablnumber8<- gsub("E",E,Ablnumber8,perl = TRUE)
  Ablnumber8<- gsub("F",F,Ablnumber8,perl = TRUE)
  Ablnumber8<- gsub("G",G,Ablnumber8,perl = TRUE)
  Ablnumber8<- gsub("H",H,Ablnumber8,perl = TRUE)
  Ablnumber8<- gsub("I",I,Ablnumber8,perl = TRUE)
  Ablnumber8<- gsub("K",K,Ablnumber8,perl = TRUE)
  Ablnumber8<- gsub("L",L,Ablnumber8,perl = TRUE)
  Ablnumber8<- gsub("M",M,Ablnumber8,perl = TRUE)
  Ablnumber8<- gsub("N",N,Ablnumber8,perl = TRUE)
  Ablnumber8<- gsub("P",P,Ablnumber8,perl = TRUE)
  Ablnumber8<- gsub("Q",Q,Ablnumber8,perl = TRUE)
  Ablnumber8<- gsub("R",R,Ablnumber8,perl = TRUE)
  Ablnumber8<- gsub("S",S,Ablnumber8,perl = TRUE)
  Ablnumber8<- gsub("T",T,Ablnumber8,perl = TRUE)
  Ablnumber8<- gsub("V",V,Ablnumber8,perl = TRUE)
  Ablnumber8<- gsub("W",W,Ablnumber8,perl = TRUE)
  Ablnumber8<- gsub("Y",Y,Ablnumber8,perl = TRUE)
  
  Ablnumber9<- gsub("A",A,Ablnumber9,perl = TRUE)
  Ablnumber9<- gsub("C",C,Ablnumber9,perl = TRUE)
  Ablnumber9<- gsub("D",D,Ablnumber9,perl = TRUE)
  Ablnumber9<- gsub("E",E,Ablnumber9,perl = TRUE)
  Ablnumber9<- gsub("F",F,Ablnumber9,perl = TRUE)
  Ablnumber9<- gsub("G",G,Ablnumber9,perl = TRUE)
  Ablnumber9<- gsub("H",H,Ablnumber9,perl = TRUE)
  Ablnumber9<- gsub("I",I,Ablnumber9,perl = TRUE)
  Ablnumber9<- gsub("K",K,Ablnumber9,perl = TRUE)
  Ablnumber9<- gsub("L",L,Ablnumber9,perl = TRUE)
  Ablnumber9<- gsub("M",M,Ablnumber9,perl = TRUE)
  Ablnumber9<- gsub("N",N,Ablnumber9,perl = TRUE)
  Ablnumber9<- gsub("P",P,Ablnumber9,perl = TRUE)
  Ablnumber9<- gsub("Q",Q,Ablnumber9,perl = TRUE)
  Ablnumber9<- gsub("R",R,Ablnumber9,perl = TRUE)
  Ablnumber9<- gsub("S",S,Ablnumber9,perl = TRUE)
  Ablnumber9<- gsub("T",T,Ablnumber9,perl = TRUE)
  Ablnumber9<- gsub("V",V,Ablnumber9,perl = TRUE)
  Ablnumber9<- gsub("W",W,Ablnumber9,perl = TRUE)
  Ablnumber9<- gsub("Y",Y,Ablnumber9,perl = TRUE)
}
########################################


total=length(Positionp7)*length(Positionp6)*length(Positionp5)*length(Positionp4)*length(Positionp3)*(length(Positionp2))*length(Positionp1)*
  length(Positiond0)*length(Positionm1)*length(Positionm2)*length(Positionm3)*length(Positionm4)*length(Positionm5)*length(Positionm6)*length(Positionm7)
#this is just a way to doublecheck that the length of the generated peptides vector is correct

GeneratedPeptides<-rep(NA, times=total*15)
GeneratedPeptides<-matrix(data = GeneratedPeptides,ncol = 15)

NumeratedPeptides<-GeneratedPeptides
#create an empty vector of correct length by finding the number of each AAs per position and multiplying them
count<-0
for (t in 1:length(Positionm7)) {
  for (s in 1:length(Positionm6)) {
    for (r in 1:length(Positionm5)) {
      for (i in 1:length(Positionm4)) {
        for (j in 1:length(Positionm3)) {
          for (k in 1:length(Positionm2)) {
            for (l in 1:length(Positionm1)) {
              for (m in 1:length(Positiond0)) {
                for (n in 1:length(Positionp1)) {
                  for (o in 1:length(Positionp2)) {
                    for (p in 1:length(Positionp3)) {
                      for (q in 1:length(Positionp4)) {
                        for (u in 1:length(Positionp5)) {
                          for (v in 1:length(Positionp6)) {
                            for (w in 1:length(Positionp7)) {
                              # i=1
                              # j=1
                              # k=1
                              # l=1
                              # m=1
                              # n=1
                              # o=1
                              # p=1
                              # q=1
                              # 
                              #for every single position, increment the count number, create a peptide using the AAs at that position
                              #then put them together into the generated peptides sequencex
                              count<-count+1
                              tabulation<-c(Positionm7[t],Positionm6[s],Positionm5[r],Positionm4[i],Positionm3[j],Positionm2[k],Positionm1[l],Positiond0[m],Positionp1[n],
                                            Positionp2[o],Positionp3[p],Positionp4[q],Positionp5[u],Positionp6[v],Positionp7[w])
                              numeration<-c(number15[t],number14[s],number13[r],number1[i],number2[j],number3[k],number4[l],number5[m],number6[n],number7[o],number8[p],number9[q],number10[u],number11[v],
                                            number12[w])
                              #tabulation<-paste(tabulation, sep="", collapse="")
                              GeneratedPeptides[count,1:15]<-tabulation
                              NumeratedPeptides[count,1:15]<-numeration
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}
####################################################################
#now here I use the Endogenous Probabilty matrix from the previous script, which is called EMPtable
#to score the created peptides
ThisKinTable<-EPMtableu#[1:nrow(SDtable),]
TKTcolumn<-c(data=rep(1,times=21))
TKTcolumn<-as.matrix(TKTcolumn,ncol=1)
ThisKinTable<-cbind(TKTcolumn,ThisKinTable)

ThisKinGeneratedScores<-rep(NA,times=nrow(GeneratedPeptides))
ThisKinGenWeirdScore<-rep(NA,times=nrow(GeneratedPeptides))

for (x in 1:nrow(GeneratedPeptides)){
  Scoringpeptide<-NumeratedPeptides[x,1:15]
  Scoringpeptide<-Scoringpeptide+1
  ThisKinTableScore<-as.numeric(ThisKinTable[Scoringpeptide[1],3])*ThisKinTable[as.numeric(Scoringpeptide[2]),4]*ThisKinTable[as.numeric(Scoringpeptide[3]),5]*
    ThisKinTable[as.numeric(Scoringpeptide[4]),6]*ThisKinTable[as.numeric(Scoringpeptide[5]),7]*ThisKinTable[as.numeric(Scoringpeptide[6]),8]*ThisKinTable[as.numeric(Scoringpeptide[7]),9]*
    #ThisKinTable[as.numeric(Scoringpeptide[8]),10]*
    ThisKinTable[as.numeric(Scoringpeptide[9]),11]*ThisKinTable[as.numeric(Scoringpeptide[10]),12]*ThisKinTable[as.numeric(Scoringpeptide[11]),13]*
    ThisKinTable[as.numeric(Scoringpeptide[12]),14]*ThisKinTable[as.numeric(Scoringpeptide[13]),15]*ThisKinTable[as.numeric(Scoringpeptide[14]),16]*ThisKinTable[as.numeric(Scoringpeptide[15]),17]
  ThisKinGeneratedScores[x]<-ThisKinTableScore
  ThisKinTableScore<-(ThisKinTableScore/(ThisKinTableScore+1/as.numeric(NormalizationScore[2])))
  ThisKinGenWeirdScore[x]<-ThisKinTableScore
}

AblGeneratedScores<-rep(NA,times=nrow(GeneratedPeptides))
ArgGeneratedScores<-rep(NA,times=nrow(GeneratedPeptides))
BtkGeneratedScores<-rep(NA,times=nrow(GeneratedPeptides))
CskGeneratedScores<-rep(NA,times=nrow(GeneratedPeptides))
FynGeneratedScores<-rep(NA,times=nrow(GeneratedPeptides))
HckGeneratedScores<-rep(NA,times=nrow(GeneratedPeptides))
JAK2GeneratedScores<-rep(NA,times=nrow(GeneratedPeptides))
LckGeneratedScores<-rep(NA,times=nrow(GeneratedPeptides))
LynGeneratedScores<-rep(NA,times=nrow(GeneratedPeptides))
Pyk2GeneratedScores<-rep(NA,times=nrow(GeneratedPeptides))
SrcGeneratedScores<-rep(NA,times=nrow(GeneratedPeptides))
SykGeneratedScores<-rep(NA,times=nrow(GeneratedPeptides))
YesGeneratedScores<-rep(NA,times=nrow(GeneratedPeptides))


for (x in 1:nrow(GeneratedPeptides)){
  Scoringpeptide<-NumeratedPeptides[x,1:15]
  AblScore<-Abl[Scoringpeptide[1],2]*Abl[Scoringpeptide[2],3]*Abl[Scoringpeptide[3],4]*Abl[Scoringpeptide[4],5]*Abl[Scoringpeptide[5],6]*Abl[Scoringpeptide[6],7]*
    Abl[Scoringpeptide[7],8]*Abl[Scoringpeptide[9],10]*Abl[Scoringpeptide[10],11]*Abl[Scoringpeptide[11],12]*Abl[Scoringpeptide[12],13]*
    Abl[Scoringpeptide[13],14]*Abl[Scoringpeptide[14],15]*Abl[Scoringpeptide[15],16]
  AblGeneratedScores[x]<-AblScore
  
  ArgScore<-Arg[Scoringpeptide[1],2]*Arg[Scoringpeptide[2],3]*Arg[Scoringpeptide[3],4]*Arg[Scoringpeptide[4],5]*Arg[Scoringpeptide[5],6]*Arg[Scoringpeptide[6],7]*
    Arg[Scoringpeptide[7],8]*Arg[Scoringpeptide[9],10]*Arg[Scoringpeptide[10],11]*Arg[Scoringpeptide[11],12]*Arg[Scoringpeptide[12],13]*
    Arg[Scoringpeptide[13],14]*Arg[Scoringpeptide[14],15]*Arg[Scoringpeptide[15],16]
  ArgGeneratedScores[x]<-ArgScore
  
  BtkScore<-Btk[Scoringpeptide[1],2]*Btk[Scoringpeptide[2],3]*Btk[Scoringpeptide[3],4]*Btk[Scoringpeptide[4],5]*Btk[Scoringpeptide[5],6]*Btk[Scoringpeptide[6],7]*
    Btk[Scoringpeptide[7],8]*Btk[Scoringpeptide[9],10]*Btk[Scoringpeptide[10],11]*Btk[Scoringpeptide[11],12]*Btk[Scoringpeptide[12],13]*
    Btk[Scoringpeptide[13],14]*Btk[Scoringpeptide[14],15]*Btk[Scoringpeptide[15],16]
  BtkGeneratedScores[x]<-BtkScore
  
  CskScore<-Csk[Scoringpeptide[1],2]*Csk[Scoringpeptide[2],3]*Csk[Scoringpeptide[3],4]*Csk[Scoringpeptide[4],5]*Csk[Scoringpeptide[5],6]*Csk[Scoringpeptide[6],7]*
    Csk[Scoringpeptide[7],8]*Csk[Scoringpeptide[9],10]*Csk[Scoringpeptide[10],11]*Csk[Scoringpeptide[11],12]*Csk[Scoringpeptide[12],13]*
    Csk[Scoringpeptide[13],14]*Csk[Scoringpeptide[14],15]*Csk[Scoringpeptide[15],16]
  CskGeneratedScores[x]<-CskScore
  
  FynScore<-Fyn[Scoringpeptide[1],2]*Fyn[Scoringpeptide[2],3]*Fyn[Scoringpeptide[3],4]*Fyn[Scoringpeptide[4],5]*Fyn[Scoringpeptide[5],6]*Fyn[Scoringpeptide[6],7]*
    Fyn[Scoringpeptide[7],8]*Fyn[Scoringpeptide[9],10]*Fyn[Scoringpeptide[10],11]*Fyn[Scoringpeptide[11],12]*Fyn[Scoringpeptide[12],13]*
    Fyn[Scoringpeptide[13],14]*Fyn[Scoringpeptide[14],15]*Fyn[Scoringpeptide[15],16]
  FynGeneratedScores[x]<-FynScore
  
  HckScore<-Hck[Scoringpeptide[1],2]*Hck[Scoringpeptide[2],3]*Hck[Scoringpeptide[3],4]*Hck[Scoringpeptide[4],5]*Hck[Scoringpeptide[5],6]*Hck[Scoringpeptide[6],7]*
    Hck[Scoringpeptide[7],8]*Hck[Scoringpeptide[9],10]*Hck[Scoringpeptide[10],11]*Hck[Scoringpeptide[11],12]*Hck[Scoringpeptide[12],13]*
    Hck[Scoringpeptide[13],14]*Hck[Scoringpeptide[14],15]*Hck[Scoringpeptide[15],16]
  HckGeneratedScores[x]<-HckScore
  
  JAK2Score<-JAK2[Scoringpeptide[1],2]*JAK2[Scoringpeptide[2],3]*JAK2[Scoringpeptide[3],4]*JAK2[Scoringpeptide[4],5]*JAK2[Scoringpeptide[5],6]*JAK2[Scoringpeptide[6],7]*
    JAK2[Scoringpeptide[7],8]*JAK2[Scoringpeptide[9],10]*JAK2[Scoringpeptide[10],11]*JAK2[Scoringpeptide[11],12]*JAK2[Scoringpeptide[12],13]*
    JAK2[Scoringpeptide[13],14]*JAK2[Scoringpeptide[14],15]*JAK2[Scoringpeptide[15],16]
  JAK2GeneratedScores[x]<-JAK2Score
  
  LckScore<-Lck[Scoringpeptide[1],2]*Lck[Scoringpeptide[2],3]*Lck[Scoringpeptide[3],4]*Lck[Scoringpeptide[4],5]*Lck[Scoringpeptide[5],6]*Lck[Scoringpeptide[6],7]*
    Lck[Scoringpeptide[7],8]*Lck[Scoringpeptide[9],10]*Lck[Scoringpeptide[10],11]*Lck[Scoringpeptide[11],12]*Lck[Scoringpeptide[12],13]*
    Lck[Scoringpeptide[13],14]*Lck[Scoringpeptide[14],15]*Lck[Scoringpeptide[15],16]
  LckGeneratedScores[x]<-LckScore
  
  LynScore<-Lyn[Scoringpeptide[1],2]*Lyn[Scoringpeptide[2],3]*Lyn[Scoringpeptide[3],4]*Lyn[Scoringpeptide[4],5]*Lyn[Scoringpeptide[5],6]*Lyn[Scoringpeptide[6],7]*
    Lyn[Scoringpeptide[7],8]*Lyn[Scoringpeptide[9],10]*Lyn[Scoringpeptide[10],11]*Lyn[Scoringpeptide[11],12]*Lyn[Scoringpeptide[12],13]*
    Lyn[Scoringpeptide[13],14]*Lyn[Scoringpeptide[14],15]*Lyn[Scoringpeptide[15],16]
  LynGeneratedScores[x]<-LynScore
  
  Pyk2Score<-Pyk2[Scoringpeptide[1],2]*Pyk2[Scoringpeptide[2],3]*Pyk2[Scoringpeptide[3],4]*Pyk2[Scoringpeptide[4],5]*Pyk2[Scoringpeptide[5],6]*Pyk2[Scoringpeptide[6],7]*
    Pyk2[Scoringpeptide[7],8]*Pyk2[Scoringpeptide[9],10]*Pyk2[Scoringpeptide[10],11]*Pyk2[Scoringpeptide[11],12]*Pyk2[Scoringpeptide[12],13]*
    Pyk2[Scoringpeptide[13],14]*Pyk2[Scoringpeptide[14],15]*Pyk2[Scoringpeptide[15],16]
  Pyk2GeneratedScores[x]<-Pyk2Score
  
  SrcScore<-Src[Scoringpeptide[1],2]*Src[Scoringpeptide[2],3]*Src[Scoringpeptide[3],4]*Src[Scoringpeptide[4],5]*Src[Scoringpeptide[5],6]*Src[Scoringpeptide[6],7]*
    Src[Scoringpeptide[7],8]*Src[Scoringpeptide[9],10]*Src[Scoringpeptide[10],11]*Src[Scoringpeptide[11],12]*Src[Scoringpeptide[12],13]*
    Src[Scoringpeptide[13],14]*Src[Scoringpeptide[14],15]*Src[Scoringpeptide[15],16]
  SrcGeneratedScores[x]<-SrcScore
  
  SykScore<-Syk[Scoringpeptide[1],2]*Syk[Scoringpeptide[2],3]*Syk[Scoringpeptide[3],4]*Syk[Scoringpeptide[4],5]*Syk[Scoringpeptide[5],6]*Syk[Scoringpeptide[6],7]*
    Syk[Scoringpeptide[7],8]*Syk[Scoringpeptide[9],10]*Syk[Scoringpeptide[10],11]*Syk[Scoringpeptide[11],12]*Syk[Scoringpeptide[12],13]*
    Syk[Scoringpeptide[13],14]*Syk[Scoringpeptide[14],15]*Syk[Scoringpeptide[15],16]
  SykGeneratedScores[x]<-SykScore
  
  YesScore<-Yes[Scoringpeptide[1],2]*Yes[Scoringpeptide[2],3]*Yes[Scoringpeptide[3],4]*Yes[Scoringpeptide[4],5]*Yes[Scoringpeptide[5],6]*Yes[Scoringpeptide[6],7]*
    Yes[Scoringpeptide[7],8]*Yes[Scoringpeptide[9],10]*Yes[Scoringpeptide[10],11]*Yes[Scoringpeptide[11],12]*Yes[Scoringpeptide[12],13]*
    Yes[Scoringpeptide[13],14]*Yes[Scoringpeptide[14],15]*Yes[Scoringpeptide[15],16]
  YesGeneratedScores[x]<-YesScore
  
  # ThisKinTableScore<-ThisKinTable[as.numeric(Scoringpeptide[1]),3]*ThisKinTable[as.numeric(Scoringpeptide[2]),4]*ThisKinTable[as.numeric(Scoringpeptide[3]),5]*
  #   ThisKinTable[as.numeric(Scoringpeptide[4]),6]*ThisKinTable[as.numeric(Scoringpeptide[6]),8]*
  #   ThisKinTable[as.numeric(Scoringpeptide[7]),9]*ThisKinTable[as.numeric(Scoringpeptide[8]),10]*ThisKinTable[as.numeric(Scoringpeptide[9]),11]
  # ThisKinGeneratedScores[x]<-ThisKinTableScore
}



AblNorm<-1/as.numeric(Abl[22,1])
AblThresh<-as.numeric(Abl[24,1])
AblTrueThresh<-((AblThresh*AblNorm)/(100-AblThresh))
AblActive<-unlist(AblGeneratedScores)>AblTrueThresh

ArgNorm<-1/as.numeric(Arg[22,1])
ArgThresh<-as.numeric(Arg[24,1])
ArgTrueThresh<-((ArgThresh*ArgNorm)/(100-ArgThresh))
ArgActive<-unlist(ArgGeneratedScores)>ArgTrueThresh

BtkNorm<-1/as.numeric(Btk[22,1])
BtkThresh<-as.numeric(Btk[24,1])
BtkTrueThresh<-((BtkThresh*BtkNorm)/(100-BtkThresh))
BtkActive<-unlist(BtkGeneratedScores)>BtkTrueThresh

CskNorm<-1/as.numeric(Csk[22,1])
CskThresh<-as.numeric(Csk[24,1])
CskTrueThresh<-((CskThresh*CskNorm)/(100-CskThresh))
CskActive<-(CskGeneratedScores)>CskTrueThresh

FynNorm<-1/as.numeric(Fyn[22,1])
FynThresh<-as.numeric(Fyn[24,1])
FynTrueThresh<-((FynThresh*FynNorm)/(100-FynThresh))
FynActive<-unlist(FynGeneratedScores)>FynTrueThresh

HckNorm<-1/as.numeric(Hck[22,1])
HckThresh<-as.numeric(Hck[24,1])
HckTrueThresh<-((HckThresh*HckNorm)/(100-HckThresh))
HckActive<-unlist(HckGeneratedScores)>HckTrueThresh

JAK2Norm<-1/as.numeric(JAK2[22,1])
JAK2Thresh<-as.numeric(JAK2[24,1])
JAK2TrueThresh<-((JAK2Thresh*JAK2Norm)/(100-JAK2Thresh))
JAk2Active<-unlist(JAK2GeneratedScores)>JAK2TrueThresh

LckNorm<-1/as.numeric(Lck[22,1])
LckThresh<-as.numeric(Lck[24,1])
LckTrueThresh<-((LckThresh*LckNorm)/(100-LckThresh))
LckActive<-unlist(LckGeneratedScores)>LckTrueThresh

LynNorm<-1/as.numeric(Lyn[22,1])
LynThresh<-as.numeric(Lyn[24,1])
LynTrueThresh<-((LynThresh*LynNorm)/(100-LynThresh))
LynActive<-unlist(LynGeneratedScores)>LynTrueThresh

Pyk2Norm<-1/as.numeric(Pyk2[22,1])
Pyk2Thresh<-as.numeric(Pyk2[24,1])
Pyk2TrueThresh<-((Pyk2Thresh*Pyk2Norm)/(100-Pyk2Thresh))
Pyk2Active<-unlist(Pyk2GeneratedScores)>Pyk2TrueThresh

SrcNorm<-1/as.numeric(Src[22,1])
SrcThresh<-as.numeric(Src[24,1])
SrcTrueThresh<-((SrcThresh*SrcNorm)/(100-SrcThresh))
SrcActive<-unlist(SrcGeneratedScores)>SrcTrueThresh

SykNorm<-1/as.numeric(Syk[22,1])
SykThresh<-as.numeric(Syk[24,1])
SykTrueThresh<-((SykThresh*SykNorm)/(100-SykThresh))
SykActive<-unlist(SykGeneratedScores)>SykTrueThresh

YesNorm<-1/as.numeric(Yes[22,1])
YesThresh<-as.numeric(Yes[24,1])
YesTrueThresh<-((YesThresh*YesNorm)/(100-YesThresh))
YesActive<-unlist(YesGeneratedScores)>YesTrueThresh

AllActive<-AblActive+ArgActive+BtkActive+CskActive+FynActive+HckActive+JAk2Active+LckActive+LynActive+Pyk2Active+SrcActive+SykActive+YesActive
#Btkactive+

Scores<-ThisKinGeneratedScores
ThresholdValues<-ThisKinGenWeirdScore

FullMotifs<-rep("Z",times=nrow(GeneratedPeptides))
for (i in 1:nrow(GeneratedPeptides)) {
  motif<-GeneratedPeptides[i,1:15]
  motif<-paste(motif,sep = "", collapse = "")
  FullMotifs[i]<-motif
}

PeptidesWithRanks<-cbind.data.frame(FullMotifs,GeneratedPeptides,Scores,ThresholdValues)
PeptidesWithRanks<-cbind.data.frame(PeptidesWithRanks,AllActive,AblActive,ArgActive,BtkActive,CskActive,FynActive,HckActive,JAk2Active,LckActive,LynActive,Pyk2Active,SrcActive,SykActive,YesActive)
RanksPeptides<-PeptidesWithRanks[order(PeptidesWithRanks$AllActive,decreasing = FALSE),]
# PepRankHead<-c(1:9,"Sequence","RPMS","PMS")
# RanksPeptides<-rbind.data.frame(PepRankHead,PeptidesWithRanks)
#head(RanksPeptides)


#now I have to score the negative sequences... for some reason
#write up how we transfect with lipofectamine
#3,4,5 questions

#PAUSED EHRE AT 4:50, HOPING THAT FIXING MINERVOTHING SO THAT LEFT SPACES WORKS FIXES A THING.  OTHERWISE
#I FUCKED WITH THE MCC TABLE AND NEED TO FINISH IT 

ThisKinBlanks<-rep(1,times=17)
#indx <- sapply(breast, is.factor)
#ThisKinTable[indx] <- lapply(ThisKinTable[indx], function(x) as.character(x))
ThisKinTable$SetOfAAs<-as.character(ThisKinTable$SetOfAAs)

#ThisKinTest<-rbind.data.frame(ThisKinTable,ThisKinBlanks)
ThisKinTable<-rbind.data.frame(ThisKinTable,ThisKinBlanks)

NegativeScores<-rep(NA,times=nrow(NegativeSubstrateList))
NegativeWeirdScores<-rep(NA,times=nrow(NegativeSubstrateList))
for (v in 1:nrow(NegativeSubstrateList)) {
  motif<-NegativeSubstrateList[v,2]
  motif<-unlist(strsplit(motif,""))
  #if (length(motif)<9){print(v)}}
  # motif[1] <- sapply(motif[1], function (x) aa_props[x])
  # motif[2] <- sapply(motif[2], function (x) aa_props[x])
  # motif[3] <- sapply(motif[3], function (x) aa_props[x])
  # motif[4] <- sapply(motif[4], function (x) aa_props[x])
  # motif[5] <- sapply(motif[5], function (x) aa_props[x])
  # motif[6] <- sapply(motif[6], function (x) aa_props[x])
  # motif[7] <- sapply(motif[7], function (x) aa_props[x])
  # motif[8] <- sapply(motif[8], function (x) aa_props[x])
  # motif[9] <- sapply(motif[9], function (x) aa_props[x])
  motif<- gsub(" ","O",motif)  
  motif <- sapply(motif, function (x) aa_props[x])
  Scoringpeptide<-motif
  Scoringpeptide<-Scoringpeptide+1
  ThisKinTableScore<-as.numeric(ThisKinTable[Scoringpeptide[1],3])*ThisKinTable[as.numeric(Scoringpeptide[2]),4]*ThisKinTable[as.numeric(Scoringpeptide[3]),5]*
    ThisKinTable[as.numeric(Scoringpeptide[4]),6]*ThisKinTable[as.numeric(Scoringpeptide[5]),7]*ThisKinTable[as.numeric(Scoringpeptide[6]),8]*ThisKinTable[as.numeric(Scoringpeptide[7]),9]*
    #ThisKinTable[as.numeric(Scoringpeptide[8]),10]*
    ThisKinTable[as.numeric(Scoringpeptide[9]),11]*ThisKinTable[as.numeric(Scoringpeptide[10]),12]*ThisKinTable[as.numeric(Scoringpeptide[11]),13]*
    ThisKinTable[as.numeric(Scoringpeptide[12]),14]*ThisKinTable[as.numeric(Scoringpeptide[13]),15]*ThisKinTable[as.numeric(Scoringpeptide[14]),16]*ThisKinTable[as.numeric(Scoringpeptide[15]),17]
  NegativeScores[v]<-ThisKinTableScore
  ThisKinTableScore<-(ThisKinTableScore/(ThisKinTableScore+1/as.numeric(NormalizationScore[2])))
  NegativeWeirdScores[v]<-ThisKinTableScore*100
}

negativesubstrates<-NegativeSubstrateList[,2]
NegativeWithScores<-cbind(negativesubstrates,as.character(NegativeScores),as.character(NegativeWeirdScores))


#NEED TO HAVE THE NEGATIVE SUBSTRATES BE OUTPUTTED

PositiveScores<-rep(NA,times=nrow(ImportedSubstrateList))
PositiveWeirdScores<-rep(NA,times=nrow(ImportedSubstrateList))

for (v in 1:nrow(ImportedSubstrateList)) {
  motif<-ImportedSubstrateList[v,4:18]
  motif<-unlist(motif)
  motif<- gsub("^$","O",motif)  
  motif <- sapply(motif, function (x) aa_props[x])
  Scoringpeptide<-motif
  Scoringpeptide<-Scoringpeptide+1
  ThisKinTableScore<-as.numeric(ThisKinTable[Scoringpeptide[1],3])*ThisKinTable[as.numeric(Scoringpeptide[2]),4]*ThisKinTable[as.numeric(Scoringpeptide[3]),5]*
    ThisKinTable[as.numeric(Scoringpeptide[4]),6]*ThisKinTable[as.numeric(Scoringpeptide[5]),7]*ThisKinTable[as.numeric(Scoringpeptide[6]),8]*ThisKinTable[as.numeric(Scoringpeptide[7]),9]*
    #ThisKinTable[as.numeric(Scoringpeptide[8]),10]*
    ThisKinTable[as.numeric(Scoringpeptide[9]),11]*ThisKinTable[as.numeric(Scoringpeptide[10]),12]*ThisKinTable[as.numeric(Scoringpeptide[11]),13]*
    ThisKinTable[as.numeric(Scoringpeptide[12]),14]*ThisKinTable[as.numeric(Scoringpeptide[13]),15]*ThisKinTable[as.numeric(Scoringpeptide[14]),16]*ThisKinTable[as.numeric(Scoringpeptide[15]),17]
  
  PositiveScores[v]<-ThisKinTableScore
  ThisKinTableScore<-(ThisKinTableScore/(ThisKinTableScore+1/as.numeric(NormalizationScore[2])))
  PositiveWeirdScores[v]<-ThisKinTableScore*100
}

positivesubstrates<-ImportedSubstrateList[,4:18]
positivewithscores<-cbind.data.frame(positivesubstrates,PositiveScores,PositiveWeirdScores)


#write down the transient transfection SOP and what we will be doing with them
#write down the vector names I will be using
#write down something about transforming bacteria and with what

#90% whatevernness
# TPninetyone<-length(PositiveWeirdScores[PositiveWeirdScores>=0.91])
# Senseninetyone<-TPninetyone/nrow(positivesubstrates)
# 
# TNninetyone<-length(NegativeWeirdScores[NegativeWeirdScores<91])
# Specninetyone<-TNninetyone/100

#create the MCC table

threshold<-c(1:100)
threshold<-order(threshold,decreasing = TRUE)

Truepositives<-c(1:100)
Falsenegatives<-c(1:100)
Sensitivity<-c(1:100)
TrueNegatives<-c(1:100)
FalsePositives<-c(1:100)
Specificity<-c(1:100)
Accuracy<-c(1:100)
MCC<-c(1:100)
EER<-c(1:100)

#MAKE DAMN SURE THAT THE ACCESSION NUMBERS FOLLOW THE MOTIFS

for (z in 1:100) {
  thres<-101-z
  Truepositives[z]<-length(PositiveWeirdScores[PositiveWeirdScores>=(thres)])
  Falsenegatives[z]<-nrow(positivesubstrates)-Truepositives[z]
  Sensitivity[z]<-Truepositives[z]/(Falsenegatives[z]+Truepositives[z])
  TrueNegatives[z]<-length(NegativeWeirdScores[NegativeWeirdScores<(thres)])
  # at thresh 100 this should be 0, because it is total minus true negatives
  FalsePositives[z]<-nrow(NegativeSubstrateList)-TrueNegatives[z]
  Specificity[z]<-1-(TrueNegatives[z]/(FalsePositives[z]+TrueNegatives[z]))
  Accuracy[z]<-100*(Truepositives[z]+TrueNegatives[z])/(Falsenegatives[z]+FalsePositives[z]+TrueNegatives[z]+Truepositives[z])
  MCC[z]<-((Truepositives[z]+TrueNegatives[z])-(Falsenegatives[z]+FalsePositives[z]))/sqrt(round(round(Truepositives[z]+Falsenegatives[z])*round(TrueNegatives[z]+FalsePositives[z])*round(Truepositives[z]+FalsePositives[z])*round(TrueNegatives[z]+Falsenegatives[z])))
  EER[z]<-.01*(((1-(Sensitivity[z]))*(Truepositives[z]+Falsenegatives[z]))+(Specificity[z]*(1-(Truepositives[z]+Falsenegatives[z]))))
}
Characterization<-cbind.data.frame(threshold,Truepositives,Falsenegatives,Sensitivity,TrueNegatives,FalsePositives,Specificity,Accuracy,MCC,EER)

positiveheader<-c(1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,"RPMS","PMS")
positivewithscores<-rbind.data.frame(positiveheader,positivewithscores)

negativeheader<-c("Substrate","RPMS","PMS")
colnames(NegativeWithScores)<-negativeheader

# write.xlsx(NegativeWithScores,file = FILENAME, sheetName = "Negative Sequences Scored",col.names = TRUE,row.names = FALSE,append = TRUE)
# write.xlsx(Characterization,file = FILENAME,sheetName = "Characterization Table",col.names = TRUE,row.names = FALSE,append = TRUE)
# write.xlsx(RanksPeptides,file = FILENAME,sheetName = "Ranked Generated Peptides",col.names = FALSE,row.names = FALSE,append = TRUE)
# write.xlsx(positivewithscores,file = FILENAME, sheetName = "Positive Sequences Scored",col.names = FALSE,row.names = FALSE,append = TRUE)
write.table(x=c("Characterzation Table"),file = FILENAME2, col.names = FALSE,row.names = FALSE, append = TRUE,sep = ",")
header<-colnames(Characterization)
Characterization<-rbind.data.frame(header,Characterization)
write.table(Characterization,file = FILENAME2, col.names = FALSE,row.names = FALSE, append = TRUE,sep = ",")

# header<-colnames(RanksPeptides)
# RanksPeptides<-rbind.data.frame(header,RanksPeptides)
write.table(RanksPeptides,file = FILENAME3,append = FALSE,row.names = FALSE,col.names = TRUE,sep = ",")
