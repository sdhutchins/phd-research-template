# Controls and Null Models

This section helps clarify how your study will distinguish signal from noise and guard against spurious conclusions. Controls and nulls support interpretation and increase confidence in findings.

## Controls

- What **negative controls** are used?
    - Example: Samples with no expected expression change under treatment.
- What **positive controls** are included?
    - Example: A known pathogenic variant or gold-standard dataset.

## Null Models

- What is the structure of your null model?
    - Example: Permuted sample labels; shuffled gene-gene interaction network; simulated VCFs.
- How does your null model match the structure or distribution of your real data?
- Why is this model appropriate for isolating your signal?

## Randomization / Permutation Strategy

- Are you using label permutation, bootstrapping, or synthetic sampling?
- How many iterations will be run?
- What assumptions are held constant across randomizations?

## Interpretation Framework

- How will you compare observed results to null expectations?
    - p-values, empirical FDR, effect size thresholds?
- Do your controls and nulls provide calibration or sanity checks for core methods?
