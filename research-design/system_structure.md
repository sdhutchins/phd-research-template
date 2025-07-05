# System Structure

Understanding the structure of the system under investigation provides a foundation for formulating hypotheses, selecting methods, and interpreting results. This section frames what type of system you’re studying, what levels of organization it spans, and what units and dynamics are central to your analysis.

## Type of System

- What kind of system are you modeling or examining?
    - Biological (e.g., gene regulatory network, tumor microenvironment, neural circuitry)
    - Regulatory (e.g., transcription factor activity, enhancer–promoter interactions, signal transduction hierarchy)
    - Computational (e.g., classification algorithm, simulation of gene-gene interaction effects, imputation model)

## Levels of Analysis

- What are the main organizational levels?
    - Example: variant → gene → pathway → phenotype
    - Example: stimulus → cell state → tissue-level readout
    - Example: sequence feature → model decision → performance metric
- How are the levels connected or nested?
    - Example: Chromatin accessibility changes affect enhancer binding → shifts in gene expression → phenotype modulation
    - Example: Sample-level omics → population-level trends

## Unit of Analysis

- What is the primary entity used for modeling or measurement?
    - Examples:
        - Genetic variant
        - Single cell or cell line
        - Timepoint or replicate
        - Patient or cohort
        - Algorithmic output (e.g., score, prediction, cluster)
- Will your project maintain a fixed unit across stages, or shift over time?
    - Example: From variants to genes to modules; From single cell to tissue-level summary

## System Dynamics

- Is the system static or changing across time, perturbation, or condition?
    - Static: A snapshot of gene expression across individuals
    - Dynamic: Temporal expression under drug treatment, disease progression, or stimulation
- How are transitions or state changes modeled or inferred?
    - Example: Time series of chromatin remodeling
    - Example: Pseudotime ordering in single-cell transcriptomics
- What assumptions are you making about system behavior?
    - Example: Assuming steady-state gene expression; assuming linear response to dosage
