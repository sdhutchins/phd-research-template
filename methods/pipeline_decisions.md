# Pipeline Decisions

Document the primary analysis pipeline(s), justification for tool selection, and overall data flow. This helps others (and future you) understand the reasoning behind methodological choices.

## Pipeline or Tool Used

- What software, workflow system, or pipeline is being used?
    - Example: Bulk RNA-seq pipeline built with Nextflow; variant annotation using VEP and Varsome API.
- Is this an existing pipeline, modified version, or custom-built?
    - Example: Custom pipeline integrating Salmon for quantification and DESeq2 for differential expression.

## Why Chosen

- What are the strengths of the selected tool or framework?
    - Example: Nextflow allows modular execution across HPC and local machines.
- How does the tool align with project needs (e.g., reproducibility, scalability, ease of debugging)?
    - Example: VEP offers transcript-aware variant annotation and integration with known pathogenicity scores.

## Key Steps and Data Flow

- What are the major stages of the pipeline?
    - Example: FASTQ → trimming → alignment → quantification → QC → normalization → statistical testing
- Where are intermediate and final results stored?
    - Example: Intermediate BAM files stored under `/results/alignment/`; final DEGs in `/results/DESeq2/`
- How are logs, parameters, and environment versions handled?
    - Example: Conda environment YAML versioned with pipeline; logs stored in `.log/` and parameters in `config.yaml`
