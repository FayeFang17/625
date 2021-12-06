#'data.prep
#'
#'Preapre data for Fst calculation. Parse SNP dataset by population.
#'
#'@param M A m \times n matrix containing SNP values 0,1,2 of each of the n
#'alleles of m sequences.
#'@param label A integer vector of population group label for each individuals.
#'Indexing of label is the same as row index of M.
#'
#'@return  List of SNP matrix, each includes all individuals from a population.
#'
#'@examples
#'
#'data(example_SNP.rda)
#'data.prep(simsnp$snp,sample_labels)
#'
#'@export
#'
#'

data.prep<-function(M,label){
  pops=unique(label)
  inds=sapply(1:length(pops), function(i) which(label %in% pops[i]))
  separate.M=sapply(1:length(pops), function(i) M[inds[[i]],])
  separate.M<-setNames(separate.M,pops)
  return(separate.M)
}
