```markdown
# Federico's Portfolio Landing Page

A modern, responsive personal portfolio website showcasing my machine learning and AI projects.

![Portfolio Screenshot](assets/images/portfolio-screenshot.png)

## 🚀 Features

- **Responsive Design**: Optimized for desktop, tablet, and mobile devices
- **Modern UI**: Clean, professional design with smooth animations
- **Project Showcase**: Display of ML projects with descriptions and technologies
- **Skills Section**: Highlighted technical skills relevant to AI/ML
- **Contact Integration**: Easy way for visitors to get in touch

## 🛠️ Built With

- **HTML5**: Semantic markup and modern structure
- **CSS3**: Custom styles with Flexbox and Grid layouts
- **JavaScript**: Lightweight scripts for interactivity
- **GitHub Pages**: Free hosting and automatic deployment

## 📁 Project Structure

```
landing/
├── public/
│   ├── index.html          # Main HTML file
│   ├── assets/
│   │   ├── images/         # All portfolio images
│   │   ├── icons/          # SVG icons and favicons
│   │   └── favicon.ico     # Site favicon
│   ├── styles/
│   │   ├── main.css        # Primary stylesheet
│   │   └── responsive.css  # Responsive breakpoints
│   └── scripts/
│       └── main.js         # JavaScript functionality
├── src/                    # Source files (if using preprocessors)
└── tests/                  # Testing files (if applicable)
```

## 🎨 Customization Guide

### 1. Personal Information
Edit the following sections in `index.html`:
- Hero section (name, tagline, description)
- About section (personal background)
- Skills section (your technical skills)
- Contact information

### 2. Projects
Add your projects to the projects grid:
```html
<div class="project-card">
  <div class="project-content">
    <div class="project-icon">🎯</div>
    <h3>Project Name</h3>
    <p>Project description</p>
    <div class="tech-tags">
      <span class="tech-tag">Technology</span>
    </div>
    <a href="project-link" class="project-link">View Project</a>
  </div>
</div>
```

### 3. Styling
Modify the CSS files to match your personal brand:
- Color scheme in `styles/main.css`
- Font styles and sizes
- Layout and spacing

### 4. Images
Replace the placeholder images in `assets/images/`:
- Profile photo: `immagine_profilo_landing_page_github.jpg`
- Project screenshots (optional)
- Custom background images (optional)

## 🚀 Deployment

This portfolio is automatically deployed to GitHub Pages via the CI/CD workflow:

1. Push to the `main` branch triggers the deployment workflow
2. GitHub Actions builds the site and deploys to GitHub Pages
3. The site is available at: `https://fede07-ml.github.io/portfolio/`

### Manual Deployment
If you need to deploy manually:
```bash
# Clone the repository
git clone https://github.com/fede07-ml/portfolio.git

# Make changes to the landing page
cd portfolio/landing

# Commit and push changes
git add .
git commit -m "Update landing page"
git push origin main
```

## 🔧 Development

To run locally for development:
1. Open `landing/public/index.html` in a web browser
2. Or use a local server for better testing:
   ```bash
   # Using Python
   python -m http.server 8000
   
   # Using Node.js
   npx serve public
   ```

## 📝 TODO List

- [ ] Add more project details and links
- [ ] Implement a blog section
- [ ] Add dark/light mode toggle
- [ ] Optimize images for faster loading
- [ ] Add Google Analytics integration
- [ ] Create project detail pages

## 🤝 Contributing

This is a personal portfolio, but suggestions and improvements are welcome! Please feel free to fork the project and submit pull requests.

## 📄 License

This project is open source and available under the [MIT License](LICENSE).

## 📞 Contact

Federico - [santillifede1234@gmail.com](mailto:santillifede1234@gmail.com)

Project Link: [https://github.com/fede07-ml/portfolio](https://github.com/fede07-ml/portfolio)

---

⭐ Star this repo if you found it helpful!
```