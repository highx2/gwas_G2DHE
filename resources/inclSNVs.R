library(tidyverse)

PROJECT_DIR <- commandArgs(trailingOnly=T)[1]
tPheno <- commandArgs(trailingOnly=T)[2]
tCHR <- commandArgs(trailingOnly=T)[3] %>% as.numeric()
START <- commandArgs(trailingOnly=T)[4] %>% as.numeric()
END <- commandArgs(trailingOnly=T)[5] %>% as.numeric()

read_tsv(str_c(PROJECT_DIR,"/output/META_",tPheno,"_all.tsv")) %>% 
  filter(CHR == tCHR) %>% 
  filter(BP >= START & BP <= END) %>% 
  select(MarkerName) %>% 
  write_tsv(str_c(PROJECT_DIR,"/tmp/inclSNVs.tsv"),col_names = F)
