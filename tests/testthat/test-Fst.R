library(bios625)

#set.seed
set.seed(100)

#--------------------------------------------------------------------
# Generate Sim Data in R
#--------------------------------------------------------------------

SNP_example=sim_SNP(method="SNP")

label=sim_SNP(method="label")

SNP=data.prep(SNP_example,label)

#--------------------------------------------------------------------
# Fst
#--------------------------------------------------------------------
idx1 <- which(label == '1')
idx2 <- which(label == '2')

test_that("Fst", {
  testthat::expect_equal( FST(SNP$'1',SNP$'2'),
              KRIS::fst.hudson(SNP_example,idx1,idx2))
  testthat::expect_equal( FST(SNP$'1',SNP$'2',method='list'),
                          KRIS::fst.each.snp.hudson(SNP_example,idx1,idx2))
  bench::mark(FST(SNP$'1',SNP$'2'),
              KRIS::fst.hudson(SNP_example,idx1,idx2))
})
