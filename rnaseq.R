# Some basic code to examine a subsequence of neuclotides in a DNA sequence

## print command, a for loop, if-then-else

rna=c("ATCGATTGAGCTCTAGCTAACTCGAGATCGC")
subrna=("GAT")
nchar(rna)
print(paste0(subrna, " and certain mutations code for the amino acid Valine"))

for (j in 1:nchar(subrna))
{
    print(substr(subrna,j,j))
}
for (j in 1:nchar(rna)-2)
{
  if(substr(rna,j,j)==substr(subrna,1,1))
  {
    if(substr(rna,j+1,j+1)==substr(subrna,2,2))
    {
      if(substr(rna,j+2,j+2)==substr(subrna,3,3))
      {
        print(paste0(subrna, " starts at location ”,j))
      }
    }
  }
 else
 {
   print(paste0(subrna, "is not present at location ",j))
}
}

# We can put this into a function so we can call it again later

issubrna<- function(seq1,subseq1){
 for (j in 1:nchar(seq1)-2){
     if(substr(seq1,j,j)==substr(subseq1,1,1)){
         if(substr(seq1,j+1,j+1)==substr(subseq1,2,2)){
             if(substr(seq1,j+2,j+2)==substr(subseq1,3,3)){
                 print(paste0(subseq1, " starts at location ",j)) } } }
     else{
         print(paste0(subseq1, "is not present at location ",j))
     }
 }
 }
}

# This completes the function definition. Now call it:
 issubrna(rna,subrna)



# Here is a pre-defined function to test whether a string is present
gregexpr(subrna,rna)

unlist(gregexpr(subrna,rna))

# the stringr package has lots of useful commands to study strings
install.packages(”stringr”)
library(”stringr”)

str_count(rna, pattern=subrna)

rna1=c("AGGTCGA")
rna2=c("TCCAAGCT")
rna3=c("CAAGGTGC")
rnas=c(rna1, rna2, rna3)
str_detect(rnas, ”CA”)
str_extract(rnas, ”CA”)
str_locate(rnas, ”CA”)
str_locate_all(rna,subrna))

