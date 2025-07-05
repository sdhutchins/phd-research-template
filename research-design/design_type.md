# Design Type

Select the overarching structure of your study. You may refine this later based on data availability and the types of inference required.

- [ ] Experimental – An intervention (e.g., gene knockout, compound exposure) is applied to samples or systems with random assignment to treatment or control conditions. Maximizes internal validity and supports causal inference.  
    - Example: Randomized CRISPR-based perturbation of transcription factors in iPSC-derived cardiomyocytes to assess regulatory cascade dynamics.

- [ ] Quasi-experimental – No full randomization, but structured comparisons exist (e.g., batch effects, pre/post treatment, matched controls). Common in studies constrained by patient groups, ethical considerations, or data reuse.  
    - Example: Pre/post longitudinal RNA-seq analysis of PBMCs from patients before and after anti-TNF therapy initiation, without random assignment.

- [ ] Observational – Biological or clinical variation is measured without any applied intervention. This includes case-control, cohort, or cross-sectional studies using primary or secondary data (e.g., GTEx, TCGA, dbGaP).  
    - Example: Integrating public TCGA RNA-seq data to identify expression signatures associated with TP53 mutation status across cancer types.

## Design Rationale

- Why is this design suitable for the biological or clinical system under study?
- Does your study involve interventions (e.g., CRISPR edits, drug screens), or are you analyzing pre-existing omics datasets?
- Are patient samples, tissues, or cell models pre-stratified by disease, genotype, or exposure?
    - Example: Matched case-control study of patients with idiopathic pulmonary fibrosis vs. unaffected siblings.
- Which components of causal inference are strengthened or constrained by your design?
    - Example: Temporal resolution in a pre/post study supports causal ordering but lacks randomization.
- What assumptions (e.g., no unmeasured confounding, correct time-ordering, linearity) are critical to justify your conclusions?
    - Example: Assuming no differential misclassification of exposure across outcome groups.
- What tradeoffs are you accepting in exchange for feasibility, ethics, or biological realism?
    - Example: Using existing tissue biobank samples limits control over experimental consistency but enables access to rare phenotypes.

## Control Strategy

- What are your negative and/or positive controls (e.g., vehicle-treated samples, isogenic wild-type lines, healthy donors)?
    - Example: Untreated cell line replicates serve as negative controls; cells treated with known apoptosis inducer serve as positive control.
- Are technical replicates, batch corrections, or normalization strategies in place to mitigate artifacts?
    - Example: ComBat used to adjust for batch effects across multiple sequencing runs.
- What threats to validity are most relevant in your context (e.g., batch effects, immortal time bias, collider stratification)?
    - Example: Case/control imbalance across sequencing lanes introduces potential confounding.
- How will you quantify or detect confounding? Are you planning to use statistical adjustment (e.g., covariate inclusion, inverse probability weighting)?
    - Example: Include sex, age, and batch as covariates in DESeq2 model.
- Are your comparison groups biologically or clinically meaningful, or are they constructed for statistical contrast?
    - Example: Defining "resilient" vs. "affected" individuals with the same genotype to isolate protective transcriptomic signatures.
