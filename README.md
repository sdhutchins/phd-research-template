# PhD Research Template

A structured, science-centered template to plan, document, and evolve a research project across its full lifecycle.
Designed for clarity, reproducibility, and deep reasoning.

## Purpose

This repository is designed for PhD students or researchers who want to scaffold their research project from hypothesis
generation through results interpretation, manuscript preparation, and communication. It supports iterative
reflection, decision tracking, and systems-level thinking throughout the scientific process.

The goal is to help you clarify:

- What you're asking  
- Why it matters  
- How you're testing it  
- What you've assumed, observed, or ruled out  

It combines grant-writing, documentation, and analysis preparation into a flexible but science-specific structure.

## Who This Is For

- New PhD students beginning a thesis or rotation project  
- Researchers seeking a consistent way to document decisions over time  
- Advisors and collaborators onboarding into an evolving project  
- Anyone who wants to develop, track, and communicate scientific reasoning clearly  

You do not need to know how to code. This structure works well with Markdown, GitHub, and MkDocs (optional)
for versioning and rendering a documentation site.

## Folder Structure and Explanation

### research-design

Documents conceptual framing, system modeling, and scientific rationale.

- `overview.md`: High-level summary of the research topic and why it matters.  
- `design_type.md`: Defines whether the design is experimental, quasi-experimental, observational, etc.  
- `problem_statement.md`: Concise articulation of the research problem being addressed.  
- `knowledge_gaps.md`: What's missing in the literature or datasets; motivates your work.  
- `working_hypotheses.md`: Testable statements you aim to validate or challenge.  
- `system_structure.md`: Diagram or description of relationships between components (e.g., genes, phenotypes, datasets).  
- `perspectives.md`: Viewpoints that shape the framing of the problem (e.g., clinical, mechanistic, systems-level).  
- `distinctions.md`: Important boundaries (e.g., disease vs. phenotype, variant vs. artifact).  
- `mental_model.md`: Your evolving conceptual map of how you think the system behaves.  
- `unanswered_questions.md`: Open problems or edge cases you want to revisit.  
- `thesis_proposal_outline.md`: Outline for formal PhD proposal or grant.
- `references.md`: Key papers, reviews, or theories that inform your design.

### methods

Tracks data sources, assumptions, and analytical decisions.

- `data_sources.md`: Primary datasets used, including sample counts and metadata context.  
- `data_and_software_doc.md`: Describes formats, schemas, and data provenance.  
- `pipeline_decisions.md`: What tools or workflows you chose and why.  
- `tool_comparisons.md`: Evaluations of alternative software or pipelines.  
- `controls_and_nulls.md`: How negative controls, null models, or baselines are used.  
- `method_assumptions.md`: Statistical and computational assumptions that underpin your approach.  
- `analysis_plan.md`: Primary and secondary analyses, including planned figures and outputs.  
- `ethics_equity_practicalities.md`: Any IRB, consent, or inclusion/exclusion considerations relevant to your population or dataset.
- `references.md`: Key tools that inform your methods.

### tracking  

Tracks the evolution of your project, decisions, and timelines.

- `project_timeline.md`: Milestones, proposed phases, and deadlines.  
- `key_decisions.md`: Log of irreversible or consequential choices with rationale.  
- `committee_feedback_log.md`: Running notes from thesis committee or advisors.  
- `iteration_log.csv`: What changed, when, and why (structured like a changelog).  
- `risks_and_mitigation.md`: Known risks (e.g., missing data, tool limitations) and your mitigation strategy.  
- `next_steps.md`: Running list of tasks and priorities.
- `anticipated_qe_questions.md`: Questions you expect to face in your qualifying exam or thesis defense, with answers.

### collaboration

Defines team roles, review plans, and sustainability for long-term projects.

- `project_roles.md`: Describes roles and responsibilities of collaborators.  
- `handoff_plan.md`: In case you step away or onboard new collaborators.  
- `review_calendar.md`: Plan for regular meetings, checkpoints, or manuscript prep.  
- `sustainability_notes.md`: Ideas for long-term maintenance, reuse, or extensions of the work.

### results  

Captures interpretations, ideas for translation, and summaries for varied audiences.

- `summary_findings.md`: Concise summary of core discoveries.  
- `interpretation_notes.md`: Notes about how to interpret trends, gaps, or caveats in your findings.  
- `audience_pitches.md`: Tailored explanations for different audiences (e.g., clinicians, grant reviewers, peers).  
- `deferred_features.md`: Interesting signals or patterns not explored yet.  
- `metaphors_and_visuals.md`: Analogies, draft figures, or ways to visualize the science.

## Quick Glossary

If you're not up to speed on what some of the words here may mean, check out this [quick glossary](glossary.md).

## Why This Template Exists

PhD research is nonlinear. Assumptions shift. Collaborators change. Pipelines evolve.

This structure helps you:

- Track how your thinking develops  
- Document design and analytical decisions  
- Improve reproducibility and clarity  
- Share work with others without ambiguity

## Optional Features

You can use:

- **[MkDocs](https://www.mkdocs.org/)** to render this as browsable documentation  
- GitHub Actions to automatically build and deploy documentation  
- GitHub template features to let others duplicate the structure easily  

### MkDocs Documentation Site

This template includes a complete MkDocs setup for creating a professional documentation website:

- **Professional Documentation**: Creates a polished, searchable website from your markdown files
- **Easy Navigation**: Hierarchical navigation makes it easy to find specific documents
- **Version Control**: All changes are tracked in git
- **Collaboration**: Easy to share with advisors and collaborators
- **Search**: Built-in search functionality across all documents
- **Responsive**: Works well on desktop and mobile devices

**Quick Setup**:
1. Install dependencies: `pip install -r requirements.txt`
2. Customize `mkdocs.yml` with your project details
3. Run `mkdocs serve` to preview locally
4. Deploy to GitHub Pages or other hosting

See [`docs/README.md`](docs/README.md) for detailed setup instructions.

## Documentation Options

### Markdown Files
All research documentation is written in Markdown, making it easy to:
- Version control with Git
- Collaborate through GitHub
- Edit with any text editor
- Convert to various formats

### MkDocs Website (Recommended)
For a more professional presentation, this template includes MkDocs configuration:
- **Professional appearance** with search and navigation
- **Automatic deployment** to GitHub Pages
- **Mobile-responsive** design
- **Easy sharing** with collaborators and advisors

See [`docs/README.md`](docs/README.md) for complete setup instructions.

## Getting Started

1. Clone or duplicate this repository  
2. Fill in `README.md`, `project_pulse.md`, and `working_hypotheses.md`  
3. Add your own tools, workflows, and project-specific markdowns  
4. Regularly update `iteration_log.csv` and `project_timeline.md`  
5. **Optional**: Set up MkDocs documentation site (see [`docs/README.md`](docs/README.md))

This is meant to evolve with you.

## Recommended Reading

I made this template with inspiration from *Ten Simple Rules for Defining a Computational Biology Project* by William
Stafford Noble ([PMCID: PMC9815624](https://www.ncbi.nlm.nih.gov/pmc/articles/PMC9815624/)). The paper offers
practical guidance for formulating, planning, and vetting research ideas in computational biology.
Many of the ideas in this template align with or extend these ten rules.

Use this as a companion when populating key design and methods documents:

- Rule 1: Start by writing down your idea → `overview.md`
- Rule 2: Define the research problem → `problem_statement.md`
- Rule 5: Clarify your hypothesis → `working_hypotheses.md`
- Rule 6: Sketch your methodological approach → `analysis_plan.md`
- Rule 7: Identify usable data sources → `data_sources.md`
- Rule 10: Share with collaborators → `project_roles.md`

## 🧾 License

[MIT License](LICENSE). Use freely with attribution.
