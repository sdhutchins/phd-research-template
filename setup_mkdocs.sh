#!/bin/bash

# Setup script for MkDocs research template
# This script helps users quickly set up MkDocs for their research project

echo "Setting up MkDocs Material for your research project..."

# Check Python version
python_version=$(python3 --version 2>&1 | awk '{print $2}' | cut -d. -f1,2)
required_version="3.8"

if [ "$(printf '%s\n' "$required_version" "$python_version" | sort -V | head -n1)" != "$required_version" ]; then
    echo "Error: Python 3.8 or higher is required. Found: $python_version"
    exit 1
fi

# Check if pip is installed
if ! command -v pip &> /dev/null; then
    echo "Error: pip is required but not installed."
    exit 1
fi

# Install MkDocs Material and dependencies
echo "Installing MkDocs Material and dependencies..."
pip install -r requirements.txt

# Create docs directory if it doesn't exist
if [ ! -d "docs" ]; then
    echo "Creating docs directory..."
    mkdir docs
fi

# Copy index.md if it doesn't exist
if [ ! -f "docs/index.md" ]; then
    echo "Creating index.md..."
    cp docs/index.md.template docs/index.md 2>/dev/null || echo "Please create docs/index.md manually"
fi

# Create stylesheets directory if it doesn't exist
if [ ! -d "docs/stylesheets" ]; then
    echo "Creating stylesheets directory..."
    mkdir -p docs/stylesheets
fi

# Create javascripts directory if it doesn't exist
if [ ! -d "docs/javascripts" ]; then
    echo "Creating javascripts directory..."
    mkdir -p docs/javascripts
fi

echo "Setup complete!"
echo ""
echo "Next steps:"
echo "1. Update mkdocs.yml with your project details"
echo "2. Customize docs/index.md for your project"
echo "3. Run 'mkdocs serve' to preview your documentation"
echo "4. Run 'mkdocs build' to build the static site"
echo ""
echo "Material theme features:"
echo "- Dark/light mode toggle"
echo "- Search functionality"
echo "- Responsive navigation"
echo "- Code syntax highlighting"
echo "- Math equation support" 