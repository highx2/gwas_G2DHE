# Project Title

GWASs of basophil and eosinophil counts in ToMMo cohorts.

---

## Overview

This repository contains scripts used for genome-wide association analysis (GWAS), including:

* Data preprocessing
* Quality control (QC)
* Association analysis
* Meta-analysis
* Visualization and downstream analysis

---

## Directory Structure

```
project/
├── README.md
├── scripts/        # Analysis scripts
├── input/          # Input files (not included unless specified)
├── output/         # Results
├── tmp/            # Intermediate files
└── resources/      # Auxiliary scripts
```

---

## Requirements

### Software

* PLINK v1.9
* PLINK v2.0
* SAIGE v1.1.9
* METAL v2011-03-25
* LocusZoom v1.4
* bcftools v1.9
* R v4.3.3

### R packages

```r
data.table v1.15.4
ggplot2 v3.5.0
dplyr v1.1.4
patchwork v1.2.0
```

---

## Data availability

The scripts require several non-public input files, including cohort data, demographic tables, ID mapping tables, imputed genotype data, and reference genotype resources. These files are not distributed in this repository. Users should replace the placeholder paths in the scripts or configuration files with paths to locally accessible resources prepared in the required format.

Researchers can apply for access through the Tohoku Medical Megabank Organization.

### Non-public input files or paths

* `'Test_code_for_the_examination_of_interest'`
* `'path/to/cohort/data/repository'`
* `'path/to/participation_status.csv'`
* `'path/to/retraction_lists_up_to_2022'`
* `'path/to/repository_of_imputed_genotype_data_derived_from_JPA_NEO'`
* `'path/to/batch27_of_imputed_genotype_data_derived_from_JPA_NEO'`
* `'path/to/ID_conversion_list_of_JPA_2.csv'`
* `'path/to/ID_conversion_list_of_JPA_NEO.csv'`
* `'path/to/demographic_data.csv'`
* `'path/to/SAIGE_container.sif'`
* `'path/to/8.3k_JPN_whole_genome_sequence_data_of_chromosome${CHR}'`

---

## Input Data

The following files are required to run the analysis but are not distributed with this repository:

* 1000 Genomes Phase 3 primary release data
  (`path/to/1000_Genomes_phase_3_primary_release_data`)

This dataset is publicly available and can be downloaded from the PLINK2 resource page:
https://www.cog-genomics.org/plink/2.0/resources#phase3_1kg

---

## License

The source code in this repository is licensed under the MIT License. See the LICENSE file for details.

Please note that the data used in this study are not included in this repository and may be subject to separate access restrictions and usage policies.
