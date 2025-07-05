# Data Sources

Document the origin, structure, and preprocessing of datasets used in your project. This section supports transparency, reproducibility, and critical appraisal of the underlying evidence base.

## Source Datasets and Descriptions

- Where did each dataset originate (e.g., public database, collaborator, institutional study)?
    - Example: GTEx v8 RNA-seq data for 17 tissues; dbGaP accession phs001234.v1 for whole-genome sequencing of PAH cohort.
- What kind of data is included (e.g., raw FASTQ, VCF, count matrices, clinical annotations)?
    - Example: Processed gene counts (TPM, raw) and matched genotype data for 300 individuals.

## Cohorts and Sample Sizes

- What populations or models are represented?
    - Example: 105 BMPR2 mutation carriers (40 affected, 65 unaffected); 50 healthy controls.
- Are there subgroups of interest (e.g., stratified by sex, ancestry, disease subtype)?
    - Example: Stratification by WHO PAH subtype and family structure.

## Preprocessing or Curation Steps

- What transformations were applied to the raw data?
    - Example: Adapter trimming with Trim Galore, alignment with STAR, quantification via featureCounts.
- How was quality control performed?
    - Example: Excluded samples with <70% mapping rate or <10M reads; removed genes with low variance across all samples.
- Were any samples excluded or imputed? Why?
    - Example: Imputed missing genotypes using Beagle; removed mislabeled samples based on genotype PCA.

## Data Use and Access

- What are the data access constraints (e.g., open access, dbGaP-controlled, IRB approval)?
- Are any datasets sensitive (e.g., human subject data, Indigenous-controlled datasets)? What restrictions apply?
