# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Development Commands

### Local Development
```bash
# Use Homebrew Ruby (required for modern macOS)
export PATH="/opt/homebrew/opt/ruby/bin:$PATH"
bundle install                    # Install Ruby dependencies
bundle exec jekyll serve          # Start local development server at localhost:4000
bundle exec jekyll serve --host 0.0.0.0  # Start server accessible from network
```

### Ruby Setup Notes
- Uses Homebrew Ruby 3.4+ (system Ruby 2.6 causes compilation issues)
- Added bigdecimal gem to Gemfile for Ruby 3.4 compatibility
- PATH must be set to use Homebrew Ruby before running bundle commands

### Building
Jekyll builds the site automatically when serving locally. The built site is generated in the `_site/` directory.

## Site Architecture

This is a Jekyll-based personal blog hosted on GitHub Pages with the following structure:

### Content Organization
- **Posts**: Located in `_posts/` directory with naming convention `YYYY-MM-DD-title.md`
- **Categories**: Two main categories - `tech` (technology/ML/AI content) and `life` (personal stories)
- **Templates**: Post templates available in `_posts/template.md` and `_posts/life-template.md`

### Layout System
- **Layouts**: `_layouts/` contains page templates (default.html, home.html, landing.html, category.html)
- **Includes**: `_includes/` contains reusable components (header.html, footer.html, head.html, etc.)
- **Theme**: Uses Minima theme with custom styling

### Custom Features
- Dark mode toggle (assets/js/darkmode.js)
- Category-based post filtering 
- Custom CSS for post images, thumbnails, and categories
- LaTeX math support via KaTeX
- Social media integration
- Google Analytics tracking

### Configuration
- Site configured via `_config.yml` with Minima theme
- Ruby dependencies managed via Gemfile
- Uses Jekyll plugins: jekyll-feed, jekyll-gist, jekyll-octicons, jekyll-github-metadata

### Content Creation
Posts require front matter with layout, title, categories, and date. Support for both single and multiple categories. Custom includes available for alerts and info boxes.