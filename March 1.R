# Author: Sanders, Date: 03/01/22, Purpose:To generate box plots for raw microarray datasets

setwd("/Users/Brandon/Desktop/CEL")
library (affy)
eset <- ReadAffy()
eset_Norm <- rma(eset)
rma <- exprs(eset_Norm)

# To check if data has been normalized using log 
head(rma)

# If not use Log base 2, or base 10
Treatment <-apply(rma[,c("GSM4843.CEL","GSM4844.CEL")], 1,log)
Control <-apply(rma[,c("GSM4845.CEL","GSM4846.CEL","GSM4847.CEL")], 1,log)