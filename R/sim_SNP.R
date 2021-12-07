#'data.simulation
#'
#'simulate a SNP dataset.
#'
#'@param method NULL, SNP, or Label. Randomly generate SNP dataset and population grouping for tutorial.
#'
#'@return  List of SNP matrix and Label. Or matrix of SNP values. Or vector of population grouping labels.
#'
#'@examples
#'
#'sim_SNP()
#'
#'sim_SNP(method="SNP")
#'
#'sim_SNP(method="label")
#'
#'
#'
#'@import stats
#'@export

sim_SNP<-function(method="NULL"){
  n=1000
  allele=2000

  SNP_example<-matrix(floor(runif(n*allele,0,3)),n,allele)
  label<-floor(runif(n,1,4))


  if (method=="SNP"){
    return(SNP_example)
  }

  if (method=="label"){
    return(label)
  }

  SNP<-list(SNP_example,label)
  SNP<-setNames(SNP,as.vector(c("SNP_example","label")))

  return(SNP)
}
