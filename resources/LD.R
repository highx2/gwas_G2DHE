library(tidyverse)
library(data.table)

PROJECT_DIR <- commandArgs(trailingOnly=T)[1]
tPheno <- commandArgs(trailingOnly=T)[2]

read_tsv(str_c(PROJECT_DIR,"/output/META_",tPheno,"_all.tsv")) %>% 
  select(MarkerName,P) %>% rename(`P-value` = P) %>% 
  write_tsv(str_c(PROJECT_DIR,"/tmp/META.TBL"))

fread(str_c(PROJECT_DIR,"/tmp/R2.ld")) %>% as_tibble() %>% 
  mutate(dprime=NA) %>% select(snp1=SNP_A,snp2=SNP_B,dprime,rsquare=R2) %>% 
  # mutate(snp1="pre-flipped TSNV") %>% 
  write_tsv(str_c(PROJECT_DIR,"/tmp/LD"))
