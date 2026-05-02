library(SummarizedExperiment)

# Now try running this again:
colData(airway)
# 1. Load the required libraries
library(airway)
library(magrittr)

# 2. Load the dataset
data("airway")

# 3. Look at the 'Count Matrix' 
# This shows how many 'reads' (fragments of RNA) were found for each gene
assay(airway) %>% head()

# 4. Look at the Sample Information
# This shows which samples were treated with the steroid (dex)
colData(airway)\

