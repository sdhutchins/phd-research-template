# Anticipated Questions

Use this document to prepare for high-stakes, committee-level questions. These prompts assume a sophisticated audience.

Focus on rigor, defensibility, and awareness of limitations or alternatives.

## Study Design

- Can you defend how this design supports causal inference given your use of randomization, matching, or longitudinal tracking?
- What latent confounders, such as unmeasured covariates or differential loss to follow-up, might still bias your comparisons?
- If your intervention assignment were subject to clinical discretion or batch effects, how would that alter interpretation?
- Does your design account for informative censoring or data missing not at random (MNAR) in your patient- or sample-level metadata?

## Hypothesis and Scope

- Is your central hypothesis grounded in a defined regulatory mechanism, pathway perturbation, or transcriptional program?
- Could your hypothesis be interpreted as post hoc pattern mining rather than pre-specified causal modeling?
- Can you pose a falsifiable alternative hypothesis consistent with current omics literature or known network topology?
- Are there biologically meaningful null models (e.g., randomized gene sets, permuted genotype-phenotype links) that you have not tested?

## Sampling and Generalizability

- How might genetic ancestry, tissue source, or environmental exposure influence generalizability to external datasets?
- Could survival bias, inclusion based on diagnostic or treatment criteria, or data completeness thresholds affect effect estimates?
- What cross-validation schemes or out-of-sample predictions are you using to assess portability across biospecimens or cohorts?

## Tool and Pipeline Justification

- What empirical benchmarks (e.g., DREAM challenges, gold-standard gene lists, synthetic spike-ins) validate the accuracy of your tool?
- Have you tested pipeline robustness under adversarial inputs, class imbalance, or corrupted labels?
- What distributional, sparsity, or independence assumptions are required by your algorithm, and are they satisfied in your omics matrix?

## Model Assumptions and Sensitivity

- How are you assessing identifiability in the presence of multicollinearity, dropout, or latent variable structure?
- Have you run diagnostic checks (e.g., residual plots, permutation tests, bootstrapped estimates) to evaluate model calibration and variance?
- If model convergence fails or the optimization landscape is degenerate, how will you adapt your inference strategy?

## Ethical and Practical Considerations

- How does your sampling strategy risk underrepresenting ancestrally diverse, low-resource, or clinically complex populations?
- Have you stratified performance metrics (e.g., AUC, F1, calibration error) by subgroup to assess algorithmic fairness?
- What ethical review is required if your findings suggest prognostic or actionable results in patient subgroups?

## Edge Case Scenarios

- How will you interpret a gene module or signature that achieves high predictive accuracy but has no known biological annotation?
- What if your key differential expression result replicates in only a subset of validation tissues or datasets?
- Can you resolve conflicting evidence when one modality (e.g., expression) supports your hypothesis but another (e.g., methylation or proteomics) does not?
- If your transcription factor inference identifies multiple regulators with overlapping binding sites, how will you prioritize them?

## Broader Impact and Rigor

- Which simplifying assumptions in variant interpretation, pathway enrichment, or transcription factor inference does your work relax or test?
- What theoretical advance (e.g., improved causal graph structure, multi-omic fusion, dimensionality reduction) does your method provide?
- How does your work contribute to reproducibility, scalability, or interpretability in computational biology pipelines?
- Can you articulate how your findings advance mechanistic understanding, clinical translation, or therapeutic discovery in your field?

## Backup and Contingency Plans

- If a required omics dataset is deprecated, missing metadata, or withdrawn from dbGaP/GEO, what secondary datasets can you use?
- Which preprocessing decisions (e.g., normalization, gene filtering, batch correction) are most sensitive in downstream outputs?
- How will you interpret your results if your primary hypothesis is only weakly supported but exploratory findings are strong?
- What alternative analyses (e.g., unsupervised clustering, pathway enrichment) can you pivot to if your primary model fails to converge?
- If your primary tool fails to run on a critical dataset, what are your fallback options for analysis?
