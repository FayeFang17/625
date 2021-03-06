#'the Fixation Index
#'
#'
#'@description  A measure of population differentiation due to genetic structure.
#'In this function, Fst is estimated from one of genetic polymorphism data,
#'single-nucleotide polymorphisms(SNP). Calculation implemented by Hudson method
#' in Hudson(1992).
#'
#'@param pop1 A m x n matrix containing SNP values 0,1,2 of each of the n
#'alleles of m sequences from population 1.
#'
#'@param pop2 A m x n matrix containing SNP values 0,1,2 of each of the n
#'alleles of m sequences from population 2.
#'
#'@param method a character string indicating format of output. This must be
#''average'(default) or 'list'.
#'
#'@return the average FST value between the two populations.
#'
#'@references
#'Bhatia, G., Patterson, N., Sankararaman, S., and Price, A.L. (2013).
#'Hudson, R.R., Slatkin, M., and Maddison, W.P. (1992). Estimation of levels of
#' gene flow from DNA sequence data. Genetics 132, 583-589.
#'
#'@examples
#'
#'SNP_example=sim_SNP(method="SNP")
#'label=sim_SNP(method="label")
#'SNP=data.prep(SNP_example,label)
#'
#'FST(SNP$'1',SNP$'3')
#'FST(SNP$'2',SNP$'3',method='average')
#'FST(SNP$'2',SNP$'3',method='list')
#'
#'@export
#'
#'

FST <-function(pop1,pop2,method="NUll") {
  #pop1

  #calculating number of each allele types
  no.AA=colSums(pop1==0)
  no.AB=colSums(pop1==1)
  no.BB=colSums(pop1==2)

  #total genotypes
  n1=(no.AA+no.AB+no.BB)*2
  #frequency of A
  pop1.fA=(no.AA*2+no.AB)/n1



  #pop2

  #calculating number of each allele types
  no.AA=colSums(pop2==0)
  no.AB=colSums(pop2==1)
  no.BB=colSums(pop2==2)

  #total genotypes
  n2=(no.AA+no.AB+no.BB)*2

  #frequency of A
  pop2.fA=(no.AA*2+no.AB)/n2



  #Fst calculation
  N = (pop1.fA - pop2.fA)^2 - pop1.fA*(1-pop1.fA)/(n1-1) - pop2.fA*(1-pop2.fA)/(n2-1)
  D = pop1.fA*(1-pop2.fA) + pop2.fA*(1-pop1.fA)
  Fst.list=N/D

  #Fst list
  if (method=="list"){
    return(Fst.list)
  }

  #average Fst
  average=mean(Fst.list)

  return (average)
}
