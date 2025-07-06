# Tool Comparisons

Use this section to transparently document why specific software tools, models, or algorithms were chosen over others. This aids reproducibility and clarifies methodological tradeoffs.

## Candidate Tools / Methods

- What tools or packages were considered?
    - Example: DESeq2, edgeR, and limma for differential expression analysis.
    - Example: SIFT, CADD, REVEL, and DITTO for variant pathogenicity scoring.
- What categories of tools were evaluated (e.g., alignment, clustering, dimensionality reduction)?

## Comparison Criteria

- What features or metrics were used to evaluate tools?
    - Examples: Runtime, scalability, documentation quality, accuracy in benchmark datasets, interpretability, community adoption.
- Were test runs or pilot analyses conducted for direct comparison?
    - Example: Compared DEGs across tools using the same dataset; evaluated correlation with qPCR validation.

## Rejected Options and Rationale

- What tools were not selected, and why?
    - Example: Excluded edgeR due to poor fit for low-count data; skipped SIFT due to outdated training data and limited transcript context.
- Were there ethical, licensing, or reproducibility concerns?
    - Example: Did not select ToolX due to restrictive license incompatible with open-source goals.
