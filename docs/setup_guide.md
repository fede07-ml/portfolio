# 🚀 Setup Guide - Portfolio & ML Projects

This guide will help you set up the development environment for the portfolio and machine learning projects.

## 📋 Prerequisites

- **Python 3.9+** installed on your system
- **Git** for version control
- **VS Code** (recommended) or any IDE

## 🛠️ Initial Setup

### 1. Clone the Repository
```bash
git clone https://github.com/fede07-ml/portfolio.git
cd portfolio
```

### 2. Set Up Virtual Environment
```bash
# Create virtual environment
python -m venv .venv

# Activate on Windows:
.venv\Scripts\activate

# Activate on Mac/Linux:
source .venv/bin/activate
```

### 3. Install Base Requirements
```bash
pip install -r requirements.txt
```

## 📁 Project-Specific Setup

### ML Projects Setup
```bash
# Install dependencies for a specific project
cd projects/ml/iris
pip install -r requirements.txt

# Or install all ML projects dependencies
find projects/ml/ -name "requirements.txt" -exec pip install -r {} \;
```

### Landing Page Setup
The landing page is a static website. No additional setup needed for basic usage.

## 🔧 Development Workflow

### Running ML Projects
```bash
# Navigate to project
cd projects/ml/iris

# Run Jupyter notebooks
jupyter notebook

# Or run Python scripts
python src/data_loading.py
```

### Testing
```bash
# Run tests for a specific project
cd projects/ml/iris
python -m pytest tests/ -v

# Run all tests
find projects/ml/ -name "test_*.py" -exec python -m pytest {} \;
```

### Code Quality
```bash
# Format code with black
black src/ tests/

# Check linting with flake8
flake8 src/ tests/ --max-line-length=88
```

## 🌐 GitHub Pages Deployment

The landing page automatically deploys to GitHub Pages when you push to the main branch.

Live URL: https://fede07-ml.github.io/portfolio/

### Manual Deployment Test
```bash
# Test the landing page locally
cd landing/public
python -m http.server 8000
# Visit http://localhost:8000
```

## 📊 Project Structure Overview
```
portfolio/
├── landing/          # Portfolio website
├── projects/ml/      # Machine learning projects
│   ├── iris/        # Iris classification
│   └── make_friedman2/ # Friedman2 regression
├── scripts/         # Utility scripts
└── docs/           # Documentation
```

## 🚀 Quick Start

1. Clone the repo
2. Create virtual environment
3. Install requirements for your target project
4. Start developing!

## ❓ Troubleshooting

### Common Issues
- ModuleNotFoundError: Run `pip install -r requirements.txt`
- GitHub Pages not updating: Check Actions tab for deployment status
- Test failures: Verify all dependencies are installed

### Getting Help
- Check existing issues on GitHub
- Review project-specific README files
- Ensure Python version compatibility

## 📝 Maintenance

### Adding New Projects
- Use template from templates/ml_project/
- Update CI workflows if needed
- Add to this documentation

### Updating Dependencies
```bash
# Update requirements for a project
pip freeze > projects/ml/iris/requirements.txt
```

Happy Coding! 🎉