# MkDocs Setup for Research Template

This directory contains the MkDocs configuration and documentation files for the research template.

## Quick Start

If you're using this template for your research project, here's what you need to do:

### 1. Initial Setup

1. **Enable GitHub Pages**:
   - Go to your repository Settings → Pages
   - Set "Source" to "Deploy from a branch"
   - Select "gh-pages" branch (will be created automatically)
   - Click Save

2. **Update project details** in `mkdocs.yml`:
   ```yaml
   site_name: Your Research Project Name
   site_author: Your Name
   repo_name: your-repo-name
   repo_url: https://github.com/yourusername/your-repo-name
   ```

3. **Customize the homepage** in `docs/index.md`:
   - Update the title and description
   - Add your specific research information
   - Update the license link to point to your repository

### 2. Automatic Deployment (Recommended)

The template includes a GitHub Actions workflow that automatically:
- Builds your documentation site
- Deploys to GitHub Pages
- Updates on every push to main/master

**To use it**:
1. Push your changes to trigger the workflow
2. Your site will be available at `https://yourusername.github.io/your-repo-name`

### 3. Manual Setup (Alternative)

If you prefer to work locally:

1. **Install dependencies**:
   ```bash
   pip install mkdocs-material
   ```

2. **Run the setup script**:
   ```bash
   chmod +x setup_mkdocs.sh
   ./setup_mkdocs.sh
   ```

3. **Preview your documentation**:
   ```bash
   mkdocs serve
   ```

4. **Deploy manually**:
   ```bash
   mkdocs gh-deploy --force
   ```

## File Structure 

```
docs/
├── index.md              # Homepage content (customize this!)
├── stylesheets/
│   └── extra.css        # Custom styles
├── javascripts/
│   └── mathjax.js       # MathJax configuration
└── README.md            # This file
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
- **GitHub Pages not updating**: Check that the gh-pages branch exists and GitHub Pages is configured correctly

## Key Features for Reproducibility

1. **Template Variables**: Uses placeholder values that users can easily replace
2. **Clear Documentation**: Each file includes instructions for customization
3. **Modular Structure**: Easy to add/remove sections based on research needs
4. **Version Control**: All configuration is tracked in git
5. **Automated Setup**: Scripts and workflows for easy deployment
6. **Cross-Platform**: Works on any system with Python

## After Making Changes

When you update your research files (in `research-design/`, `methods/`, etc.):

- **With GitHub Actions**: Just push your changes - the workflow handles everything automatically
- **With manual setup**: Run `./setup_mkdocs.sh` again to sync changes to the docs directory