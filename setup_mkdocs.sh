#!/bin/bash

# Setup script for MkDocs research template
# This script helps users quickly set up MkDocs for their research project

echo "Setting up MkDocs for your research project..."

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

# Create subdirectories in docs
echo "Creating documentation structure..."
mkdir -p docs/research-design
mkdir -p docs/methods
mkdir -p docs/results
mkdir -p docs/tracking
mkdir -p docs/collaboration
mkdir -p docs/stylesheets
mkdir -p docs/javascripts

# Move markdown files to docs directory
echo "Moving research files to docs directory..."

# Move research-design files
if [ -d "research-design" ]; then
    echo "Moving research-design files..."
    cp research-design/*.md docs/research-design/ 2>/dev/null || echo "No .md files found in research-design"
fi

# Move methods files
if [ -d "methods" ]; then
    echo "Moving methods files..."
    cp methods/*.md docs/methods/ 2>/dev/null || echo "No .md files found in methods"
fi

# Move results files
if [ -d "results" ]; then
    echo "Moving results files..."
    cp results/*.md docs/results/ 2>/dev/null || echo "No .md files found in results"
fi

# Move tracking files
if [ -d "tracking" ]; then
    echo "Moving tracking files..."
    cp tracking/*.md docs/tracking/ 2>/dev/null || echo "No .md files found in tracking"
    # Also copy CSV files
    cp tracking/*.csv docs/tracking/ 2>/dev/null || echo "No .csv files found in tracking"
fi

# Move collaboration files
if [ -d "collaboration" ]; then
    echo "Moving collaboration files..."
    cp collaboration/*.md docs/collaboration/ 2>/dev/null || echo "No .md files found in collaboration"
fi

# Move root-level files
echo "Moving root-level documentation files..."
cp glossary.md docs/ 2>/dev/null || echo "glossary.md not found"
cp references.md docs/ 2>/dev/null || echo "references.md not found"
cp LICENSE docs/LICENSE.md 2>/dev/null || echo "LICENSE not found"

echo "Setup complete!"
echo ""
echo "Next steps:"
echo "1. Update mkdocs.yml with your project details"
echo "2. Run 'mkdocs serve' to preview your documentation"
echo "3. Run 'mkdocs build' to build the static site"
echo ""
echo "IMPORTANT: After making changes to your research files, run this script again"
echo "to sync the changes to the docs directory:"
echo "  ./setup_mkdocs.sh" 