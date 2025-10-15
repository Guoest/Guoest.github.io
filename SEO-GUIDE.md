---
layout: default
title: SEO Best Practices Guide
sitemap: false
robots: noindex, nofollow
---

# SEO Guide for Beyond Intelligence Blog

This guide documents the SEO optimizations implemented on this site and best practices for content creation.

## What's Been Implemented

### 1. Meta Tags & Structured Data
- **Meta descriptions**: All posts should have unique `description` field (150-160 chars)
- **Open Graph tags**: Automatic generation for social media sharing (Facebook, LinkedIn)
- **Twitter Cards**: Summary cards with images for better Twitter visibility
- **Schema.org markup**: BlogPosting, BreadcrumbList, Person, and Organization schemas

### 2. Site Configuration
Enhanced `_config.yml` with:
- Improved site description with keywords
- Author information
- Social profile links
- Logo specification
- Webmaster verification placeholders

### 3. Content Enhancements
- **Post descriptions**: Every post now has SEO-friendly descriptions
- **Featured images**: Posts include `image` field for social sharing
- **Breadcrumb navigation**: Schema-enabled breadcrumbs on all posts
- **Category descriptions**: SEO-optimized descriptions for /tech and /life pages
- **Page titles**: Descriptive titles with proper branding

### 4. Technical SEO
- **Sitemap**: Auto-generated via jekyll-sitemap plugin
- **Robots.txt**: Configured to allow all crawlers
- **Canonical URLs**: Handled by jekyll-seo-tag
- **Language tags**: Proper hreflang tags for EN/ZH versions
- **Mobile-friendly**: Responsive design with proper viewport meta tag
- **Image lazy loading**: Native lazy loading on images
- **RSS Feed**: Auto-generated Atom feed

## Creating SEO-Friendly Content

### Writing Post Descriptions
Every post should have a `description` field in the front matter:

```yaml
---
title: My Awesome Post
description: "A compelling 150-160 character summary with keywords that makes people want to click!"
image: /images/my-post/hero.png
---
```

**Best practices for descriptions:**
- 150-160 characters (Google's typical limit)
- Include 1-2 relevant keywords naturally
- Make it compelling and actionable
- Accurately represent the content
- Don't just copy the first paragraph

**Good example:**
```yaml
description: "Building a fully functional payment platform from scratch in 6 hours using AI. Real results, practical tips, and how AI development tools are revolutionizing software creation."
```

**Bad example:**
```yaml
description: "This post is about building things."  # Too vague, too short
```

### Featured Images for Social Sharing
Always include an `image` field:

```yaml
image: /images/my-post/featured.png  # Absolute path from site root
```

**Image recommendations:**
- 1200x630px (optimal for Open Graph)
- Relevant to the post content
- Include text overlay for clarity
- Use descriptive filenames

### Image Alt Text
Always include descriptive alt text:

```markdown
![AI system architecture](/images/architecture.png)
```

or using the image include:

```liquid
{% include image.html src="/images/post/img.png" alt="Detailed description of what's in the image" caption="Optional caption" %}
```

### Heading Structure
- One H1 per page (automatically the post title)
- Use H2 for main sections
- Use H3 for subsections
- Don't skip heading levels
- Make headings descriptive

### Internal Linking
- Link to related posts
- Use descriptive anchor text (not "click here")
- Help users and search engines understand site structure

**Good example:**
```markdown
Learn more about [machine learning engineering transitions](/tech/2025/04/06/ml-journey.html)
```

**Bad example:**
```markdown
[Click here](/tech/2025/04/06/ml-journey.html) for more info
```

## Category Pages

Category pages should have:
- Descriptive `title`
- Compelling `description` (for meta tags)
- Introductory paragraph with keywords

Example:
```yaml
---
layout: category
title: Tech
category: tech
description: "Explore articles about AI, machine learning, MLOps, and software engineering."
---
```

## Google Search Console Setup

### Step 1: Verify Site Ownership
1. Go to [Google Search Console](https://search.google.com/search-console)
2. Add property: `https://blog.beyondintelligence.dev`
3. Choose verification method (recommended: HTML tag)
4. Add verification code to `_config.yml`:

```yaml
webmaster_verifications:
  google: "your-verification-code-here"
```

### Step 2: Submit Sitemap
1. In Search Console, go to Sitemaps
2. Submit: `https://blog.beyondintelligence.dev/sitemap.xml`

### Step 3: Monitor Performance
- Track impressions, clicks, and CTR
- Identify top-performing pages
- Find keyword opportunities
- Monitor mobile usability
- Check Core Web Vitals

## Common SEO Mistakes to Avoid

❌ **Don't:**
- Skip meta descriptions
- Use duplicate descriptions across posts
- Stuff keywords unnaturally
- Use generic titles like "Blog Post"
- Ignore image alt text
- Have broken internal links
- Create thin content (< 300 words without good reason)

✅ **Do:**
- Write unique descriptions for every post
- Use natural language with relevant keywords
- Create descriptive, compelling titles
- Always add alt text to images
- Check links before publishing
- Aim for comprehensive, valuable content
- Update old posts when information changes

## Monitoring SEO Performance

### Key Metrics to Track
1. **Organic traffic** (Google Analytics)
2. **Search impressions & clicks** (Search Console)
3. **Average position** in search results
4. **Click-through rate (CTR)**
5. **Core Web Vitals** (page speed, interactivity)
6. **Mobile usability**

### Tools to Use
- Google Search Console (search performance)
- Google Analytics (traffic analysis)
- PageSpeed Insights (performance)
- Mobile-Friendly Test (mobile compatibility)

## Next Steps

### Immediate Actions
1. ✅ Add meta descriptions to all existing posts
2. ✅ Fix typos in About page
3. ✅ Add Open Graph and Twitter Card metadata
4. ✅ Enhance structured data
5. ⏳ Set up Google Search Console verification
6. ⏳ Submit sitemap to Google

### Ongoing Optimization
- Write compelling meta descriptions for new posts
- Add descriptive alt text to all images
- Monitor Search Console for issues
- Update old content regularly
- Build internal links between related posts
- Track keyword rankings
- Optimize Core Web Vitals

## Resources

- [Google SEO Starter Guide](https://developers.google.com/search/docs/fundamentals/seo-starter-guide)
- [Google Search Console](https://search.google.com/search-console)
- [Schema.org Documentation](https://schema.org/)
- [Open Graph Protocol](https://ogp.me/)
- [Twitter Card Validator](https://cards-dev.twitter.com/validator)

## Questions?

For SEO-related questions or issues, refer to:
- This guide
- Google's official SEO documentation
- The site's CLAUDE.md for development guidance
