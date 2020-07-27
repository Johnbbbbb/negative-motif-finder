NAMEOFOUTPUTFILE<-"output1.csv"

SuperAwesometrial <- read.delim2("input1.tabular", header=FALSE)
SBF<-read.csv("input3.csv", stringsAsFactors = FALSE, header = FALSE)
SBF<-t(SBF)
PositiveMotifs <- read.csv("input2.csv", stringsAsFactors=FALSE)


YsToim<-rep("xY",times=nrow(PositiveMotifs))
PositiveMotifs[,11]<-YsToim



#this code is meant to take a list of proteins, and our list of phosphopeptides, and find which Y-containing peptides could have been found phosphorylated but weren't



#first then I create the list of phosphopeptides
Positive9Letters<-PositiveMotifs[,4:18]
PositiveTrueMotifs<-c()

#then I take the proteins 
AccessionNumbers<-as.character(SBF[2:nrow(SBF),1])
AccessionNumbers<-AccessionNumbers[!is.na(AccessionNumbers)]
#the above is only those proteins from which our phosphopeptides sprung, the below is every protein in the human proteome
ALLPOSSIBLE<-SuperAwesometrial[,1]
ALLPOSSIBLE<-as.character(ALLPOSSIBLE)

for (q in 1:nrow(Positive9Letters)) {
  LeftJust<-0
  RightJust<-0
  
  
  motifmotif<-Positive9Letters[q,]
  motifmotif<-paste(motifmotif, collapse = "",sep = "")
  motifmotif<-unlist(strsplit(motifmotif, split = ""))
  position <- match(x = "x", table = motifmotif)
  LeftJust<-position-1
  RightJust<-length(motifmotif)-position-1
  #find which position was the phospho-amino acid, it is marked with an X
  
  LeftSpaces<-rep(x=" ", times=(7-LeftJust))
  RightSpaces<-rep(x=" ", times=(7-RightJust))
  motifmotif<-motifmotif[!motifmotif %in% c("x")]
  motifmotif<-c(LeftSpaces,motifmotif,RightSpaces)
  motifmotif<-paste(motifmotif, collapse = "",sep = "")
  #put spaces on either side of the motif if the motif does not fill out a -7 to +7 motif
  
  PositiveTrueMotifs<-c(PositiveTrueMotifs,motifmotif)
}



allmotifs<-matrix(data=rep("Motifs", times= 1000000),ncol = 1)
thenames<-matrix(data=rep("AccessionNumbers", times= 1000000),ncol = 1)
#I preallocate vectors for efficiency, but I have no way of knowing how big these particular vectors need to be, so I just make them way bigger
#than I know they need to be.  A vector 1 million long is plenty big

MotifNumber<-2

locations<-unique(grep(paste(AccessionNumbers,collapse="|"), ALLPOSSIBLE))


if (sum(locations)>0){
  whereisit<-locations
  for (u in 1:length(whereisit)) {
    i<-whereisit[u]
    name<-c()
    data<-c()
    name<-as.character(SuperAwesometrial[i,1])
    #the name of each protein is the first column 
    name<-sub(x=name, pattern=",", replacement="")
    #the names may contain commas, remove them
    data<-as.character(SuperAwesometrial[i,3])
    #the amino acids are stored in the third column
    data<-strsplit(data,"")
    #split them into their component letters
    data<-unlist(data)
    #turn them into a vector
    motif<-c()
    
    #this part below is where I can speed things up
    The_Ys<-data=="Y"
    #find any Y in the protein
    if (sum(The_Ys>0)){ #if there is at least one Y
      Where_are_they<-which(The_Ys %in% TRUE)
      for (z in 1:length(Where_are_they)) { #then for every Y, make a motif
        
        j<-Where_are_they[z]
        a <- j-7
        a<-ifelse(a<1, a <- 1, a <- a)
        b<-j+7
        b<-ifelse(b>length(data), b <- length(data), b <- 
                    b)
        #take the motif that is +/- 4 from that Y, sanity checks so that values are never off the grid from the protein
        
        LeftSide<-7-(j-a)
        RightSide<-7-(b-j)
        #how is the motif justified?  Does it have exactly 4 letters to the left/right, or does it not?
        
        leftspaces<-rep(" ",times=LeftSide)
        rightspaces<-rep(" ",times=RightSide)
        #add blank spaces if the motif has less than 4 letters to the left/right
        
        
        motif<-(data[(a):(b)])
        motif<-c(leftspaces,motif,rightspaces)
        #save that motif, which is the Y and +/- 4 amino acids, including truncation
        
        motif<-paste(motif, sep="", collapse="")
        #the 4 amino acids, put them back together into a single string
        motif<-matrix(data=c(motif),nrow = 1)
        namesss<-matrix(data=c(name),nrow = 1)
        #keep this motif and separately keep the name of the protein it came from
        
        allmotifs[MotifNumber,1]<-motif
        thenames[MotifNumber,1]<-namesss
        MotifNumber<-MotifNumber+1
        
      }
      
    }
  }
}




names(allmotifs)<-thenames

truemotifs<-allmotifs[!duplicated(allmotifs)]
#remove duplicates from the motifs and names

#make the motifs and names into matrices
truemotifs<-truemotifs[!truemotifs %in% PositiveTrueMotifs]
outputfile<-cbind(names(truemotifs),truemotifs)
outputfile <- gsub(",","",outputfile)
write.table(outputfile, file=NAMEOFOUTPUTFILE, quote=FALSE, sep=",",
             row.names=FALSE,col.names = FALSE, na="", append=TRUE)
