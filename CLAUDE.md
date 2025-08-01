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

#### Post Creation Scripts
```bash
# Create new post with automatic setup
ruby scripts/new-post.rb "Post Title" [tech|life]
# Examples:
ruby scripts/new-post.rb "My AI Journey" tech
ruby scripts/new-post.rb "Travel Stories" life
```

#### Image Management
```bash
# Add single image and generate markdown
ruby scripts/image-helper.rb add post-slug ~/path/to/image.png "Alt text"

# Create image gallery
ruby scripts/image-helper.rb gallery post-slug image1.png image2.png image3.png

# Screenshot workflow helper
ruby scripts/image-helper.rb screenshot post-slug "Description"

# List images for a post
ruby scripts/image-helper.rb list post-slug
```

#### Enhanced Image Includes
```markdown
<!-- Responsive image with caption -->
{% include image.html src="/images/post-slug/image.png" alt="Description" caption="Optional caption" %}

<!-- Image with custom styling -->
{% include image.html src="/images/post-slug/screenshot.png" alt="Screenshot" class="screenshot" %}

<!-- Image gallery -->
<div class="image-gallery">
  {% include image.html src="/images/post-slug/img1.jpg" alt="Image 1" class="" %}
  {% include image.html src="/images/post-slug/img2.jpg" alt="Image 2" class="" %}
</div>
```

#### Templates
- `_posts/tech-template-enhanced.md`: Comprehensive tech post structure
- `_posts/life-template-enhanced.md`: Personal story format
- `_posts/template.md`: Basic template (original)
- `_posts/life-template.md`: Simple life template (original)

#### Post Structure
Posts require front matter with layout, title, categories, and date. Support for both single and multiple categories. Custom includes available for alerts, info boxes, and enhanced images.