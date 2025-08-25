# `docs/project_structure.md`

```markdown
# Project Structure Guide

This document outlines the recommended structure for machine learning projects in this portfolio.

## Simplified ML Project Structure (Recommended)

```
project-name/
├── Project_Analysis.ipynb      # Main Jupyter notebook with complete analysis
├── project_analysis.py         # Optional Python script version
├── requirements.txt            # Python dependencies for reproducibility
├── README.md                   # Project documentation and overview
└── assets/                     # Supporting files directory
    ├── images/                 # Visualizations, graphs and charts
    └── data/                   # Project-specific data (if not using standard datasets)
```

## When to Use This Structure

- **Educational projects** (Iris Classification, Titanic Survival, etc.)
- **Small to medium ML projects** (coursework, personal experiments)
- **Portfolio projects** and proof-of-concepts
- **Quick prototypes** and exploratory analysis

## Complex Project Structure (For Larger Projects)

For more complex projects, consider this expanded structure:

```
complex-project/
├── data/
│   ├── raw/                    # Immutable original data
│   ├── processed/              # Cleaned and processed data
│   └── external/               # Third-party data sources
├── notebooks/                  # Exploratory analysis notebooks
│   ├── 01_eda.ipynb           # Exploratory Data Analysis
│   ├── 02_preprocessing.ipynb # Data cleaning and feature engineering
│   └── 03_modeling.ipynb      # Model training and evaluation
├── src/                        # Source code modules
│   ├── data/                   # Data processing utilities
│   ├── features/               # Feature engineering code
│   ├── models/                 # Model building and training
│   └── visualization/          # Visualization utilities
├── models/                     # Serialized trained models
├── reports/                    # Generated reports and findings
│   └── figures/                # Final visualizations for reports
└── requirements.txt            # Project dependencies
```

## Best Practices

1. **Keep it simple** - Use the simplified structure for small to medium projects
2. **Document thoroughly** - Every project needs a clear README with:
   - Project objective and description
   - Setup instructions
   - Key findings and results
   - How to run the code
3. **Ensure reproducibility** - Include requirements.txt with all dependencies
4. **Organize assets** - Save important visualizations in the assets folder
5. **Use meaningful names** - Clear, descriptive file and folder names
6. **Version control** - Keep projects under Git version control
7. **Data handling** - For larger projects, use proper data versioning

## Example Projects

See these examples in the repository:
- `projects/ml/iris/` - Iris flower classification
- `projects/ml/friedman/` - Friedman regression analysis

## Template

A project template is available at: `templates/ml_project/`
```