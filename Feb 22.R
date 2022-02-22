# Author: Sanders, Date: 02/22/2022, Purpose: To generate box plots for raw microarray datasets

setwd("/Users/Brandon/Desktop/CEL")
library (affy)
eset <- ReadAffy()

# Box plots for raw datasets
boxplot(eset)

# Perform RMA normalization
eset_Norm <- rma(eset)

# Box plot for normalized datasets
rma <- exprs(eset_Norm)
boxplot(rma)