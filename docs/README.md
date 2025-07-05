# MkDocs Setup for Research Template

This directory contains the MkDocs configuration and documentation files for the research template.

## Quick Start

1. **Install dependencies**:
   ```bash
   pip install -r requirements.txt
   ```

2. **Customize configuration**:
   - Update `mkdocs.yml` with your project details
   - Modify `docs/index.md` for your specific project

3. **Preview your documentation**:
   ```bash
   mkdocs serve
   ```

4. **Build the site**:
   ```bash
   mkdocs build
   ```

## File Structure 

```
docs/
├── index.md # Homepage content
├── stylesheets/
│ └── extra.css # Custom styles
├── javascripts/
│ └── mathjax.js # MathJax configuration
└── README.md # This file
```


## Customization

### Adding New Sections

1. Create new markdown files in the appropriate directories
2. Update the navigation in `mkdocs.yml`
3. Add any custom styling in `extra.css`

### Changing the Theme

Modify the `theme` section in `mkdocs.yml`:

```yaml
theme:
  name: material
  features:
    - navigation.tabs
    - navigation.sections
  palette:
    - scheme: default
      primary: indigo
```

### Adding Plugins

Install additional plugins and add them to the `plugins` section in `mkdocs.yml`.

## Deployment

### GitHub Pages

1. Enable GitHub Pages in your repository settings
2. Set the source to "GitHub Actions"
3. Push changes to trigger automatic deployment

### Other Platforms

The built site (in `site/`) can be deployed to any static hosting service.

## Troubleshooting

- **Build errors**: Check that all files referenced in `mkdocs.yml` exist
- **Missing styles**: Ensure `extra.css` is in the correct location
- **Math rendering**: Verify MathJax configuration in `mathjax.js`

## Key Features for Reproducibility

1. **Template Variables**: Uses placeholder values that users can easily replace
2. **Clear Documentation**: Each file includes instructions for customization
3. **Modular Structure**: Easy to add/remove sections based on research needs
4. **Version Control**: All configuration is tracked in git
5. **Automated Setup**: Scripts and workflows for easy deployment
6. **Cross-Platform**: Works on any system with Python

## Usage Instructions for Template Users

1. **Clone the template**
2. **Update `mkdocs.yml`** with their project details
3. **Customize `docs/index.md`** for their specific research
4. **Run `mkdocs serve`** to preview
5. **Deploy** using GitHub Pages or other hosting