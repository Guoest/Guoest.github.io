---
layout: default
title: SEO Best Practices Guide
sitemap: false
robots: noindex, nofollow
---

# SEO Guide for Beyond Intelligence Blog

This guide documents the SEO optimizations implemented on this site and best practices for content creation.

## Understanding Google's EEAT Framework

### What is EEAT?

**EEAT** stands for **Experience, Expertise, Authoritativeness, and Trustworthiness** — Google's core framework for evaluating content quality in search results. While not a direct ranking factor, EEAT principles guide Google's quality raters and inform algorithm updates.

**Why EEAT Matters:**
- 🔍 **Higher search rankings**: Content demonstrating strong EEAT ranks better
- 👥 **User trust**: Readers feel confident information is reliable and credible
- 🎯 **Algorithm alignment**: Helps you align with Google's Helpful Content System
- ⚠️ **Critical for YMYL**: Essential for "Your Money or Your Life" topics (health, finance, safety)

### The Four Pillars of EEAT

#### 1. Experience 👨‍💻
**First-hand, real-world experience with the topic**

What it means:
- Personal involvement and direct knowledge
- Real-world testing, usage, or participation
- Authentic stories and case studies

How to demonstrate:
- Share personal anecdotes and lessons learned
- Include photos/screenshots of yourself using products or technologies
- Document your journey with specific examples
- Show before/after results from actual projects

#### 2. Expertise 🎓
**Deep subject knowledge through education, training, or extensive practice**

What it means:
- Formal qualifications or extensive hands-on experience
- Demonstrable mastery of the subject
- Ability to provide accurate, nuanced information

How to demonstrate:
- Clearly state your credentials and qualifications
- Reference your professional experience and projects
- Use industry terminology correctly
- Provide detailed, comprehensive coverage
- Show understanding of edge cases and nuances

#### 3. Authoritativeness 🏆
**Recognition as a trusted source within your field**

What it means:
- Industry recognition and citations
- Peer acknowledgment
- Influence and thought leadership

How to demonstrate:
- Get cited by other reputable sources
- Earn backlinks from authoritative sites
- Speak at conferences or events
- Contribute to industry publications
- Build a consistent publishing history
- Engage with professional communities

#### 4. Trustworthiness 🔒
**Accuracy, transparency, and security**

What it means:
- Well-sourced, factual information
- Secure website (HTTPS)
- Clear policies and contact information
- Honest, unbiased content

How to demonstrate:
- Use HTTPS everywhere (✅ already implemented)
- Cite credible, authoritative sources
- Be transparent about affiliations and sponsorships
- Provide clear contact information
- Include author information and credentials
- Regular content updates and corrections
- Clear privacy policy and terms

### EEAT Content Checklist

Every post should demonstrate EEAT through:

- [ ] **Author attribution** with bio and credentials
- [ ] **First-hand experience** examples (personal stories, case studies)
- [ ] **Credible sources** (link to authoritative sites, research, documentation)
- [ ] **Visual proof** (screenshots, photos showing real usage)
- [ ] **Comprehensive coverage** (answer questions thoroughly)
- [ ] **Up-to-date information** (include publication and update dates)
- [ ] **Clear expertise signals** (explain your background, qualifications)
- [ ] **Transparent intent** (be clear about opinions vs. facts)
- [ ] **Engagement opportunities** (enable comments, respond to readers)

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

## Creating SEO-Friendly Content with EEAT

### Required Front Matter for EEAT Compliance

Every post MUST include the following fields to demonstrate EEAT:

```yaml
---
layout: post
title: "My Awesome Post"
description: "A compelling 150-160 character summary with keywords that makes people want to click!"
date: 2025-11-01 10:00:00 -0800
categories: [tech]
image: /images/my-post/hero.png
author: "Your Name"  # REQUIRED for EEAT
author_bio: "ML Engineer with 5+ years experience in AI systems"  # RECOMMENDED
last_modified_at: 2025-11-01  # RECOMMENDED for content freshness
---
```

**New EEAT-related fields:**
- `author`: Your name (builds authoritativeness)
- `author_bio`: Brief credentials/expertise statement (optional but recommended)
- `last_modified_at`: When content was last updated (demonstrates freshness and trustworthiness)

### Writing Post Descriptions
Every post should have a `description` field in the front matter:

```yaml
---
title: My Awesome Post
description: "A compelling 150-160 character summary with keywords that makes people want to click!"
image: /images/my-post/hero.png
author: "Your Name"
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

### Demonstrating EEAT in Your Content

#### 1. Show Your Experience (The First E)

**Start with personal context:**
```markdown
## My Journey with [Topic]

After spending 6 months building payment systems at [Company], I learned that...
[Share your first-hand experience]
```

**Include real examples:**
- Screenshots from actual projects you've worked on
- Code snippets from your own implementations
- Before/after metrics from real use cases
- Photos of yourself at relevant events, using products, etc.

**Good example:**
> "I built three different RAG systems in production over the past year. Here's what I learned from processing 10M+ queries..."

**Bad example:**
> "RAG systems are popular. Here's a tutorial I compiled from documentation..."

#### 2. Establish Your Expertise (The Second E)

**Add an author introduction to each post:**
```markdown
*Written by [Your Name], [Your Title] with [X years] experience in [Field].
[Brief credential or relevant achievement].*
```

**Demonstrate depth:**
- Explain WHY things work, not just HOW
- Cover edge cases and gotchas
- Compare different approaches with pros/cons
- Reference industry standards and best practices
- Link to official documentation and research papers

**Cite credible sources:**
```markdown
According to [Google's research on X](link), the optimal approach is...
The official [Python documentation](link) recommends...
A [Stanford study](link) found that...
```

**Acceptable authoritative sources:**
- Official documentation (Python.org, GitHub Docs, etc.)
- Academic papers and university research
- Government websites (.gov, .edu)
- Industry leaders' blogs (Google AI Blog, Meta Engineering, etc.)
- Reputable media outlets (TechCrunch, Wired, etc.)
- Well-established technical publications

#### 3. Build Authoritativeness (The A)

**Link to your other relevant work:**
```markdown
I previously wrote about [related topic](/tech/yyyy/mm/dd/post-slug.html), which covers...
```

**Reference your credentials naturally:**
- "In my role as [position] at [company]..."
- "When I spoke at [conference] about this..."
- "After implementing this across [number] production systems..."

**Engage with your community:**
- Respond to comments on your posts
- Update posts based on reader feedback
- Reference discussions and community insights
- Link to your GitHub, LinkedIn, or professional profiles

#### 4. Ensure Trustworthiness (The T)

**Be transparent:**
```markdown
**Disclosure**: I work at [Company] but these views are my own.
**Affiliate note**: Some links may earn a commission at no cost to you.
**Updated**: Last updated on [date] to reflect changes in [technology/API/etc.]
```

**Fact-check everything:**
- Verify all technical claims
- Test code examples before publishing
- Link to primary sources, not secondary summaries
- Correct errors promptly and visibly

**Show recency:**
```markdown
*Last updated: November 2025*
*Tested with: Python 3.12, TensorFlow 2.15*
```

**Provide contact/feedback options:**
```markdown
Have questions or corrections? [Reach out](/contact) or comment below.
```

### EEAT Content Template

Use this structure for maximum EEAT signal:

```markdown
---
title: "Your Post Title"
description: "150-160 character SEO description"
date: 2025-11-01
author: "Your Name"
author_bio: "Your credentials in one sentence"
categories: [tech]
image: /images/post/hero.png
last_modified_at: 2025-11-01
---

*By [Your Name], [Title] with [X years] experience in [Field].
[One sentence about your relevant credibility].*

## Introduction
[Personal hook: Your experience with this topic]

## Background
[Establish expertise: Why you know this, credentials, relevant work]

## Main Content
[Detailed, comprehensive content with:]
- Personal examples and screenshots
- Code from your actual projects
- Links to authoritative sources
- Explanations of WHY, not just HOW

## Real-World Example
[Case study from your experience with metrics/results]

## Key Takeaways
[Actionable insights based on your experience]

## Resources
- [Official Documentation](link)
- [Academic Research](link)
- [Industry Best Practices](link)

---

*Updated: [Date] | Have questions? [Contact me](/contact)*
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

## Author Pages & Profiles (EEAT Critical)

### Why Author Pages Matter for EEAT

Google needs to verify that real, qualified people write your content. A comprehensive author page is essential for demonstrating expertise and authoritativeness.

### Creating Your Author Page

Create an `/about` or `/author` page with:

**Required elements:**
- Full name
- Professional photo
- Current role and company
- Relevant credentials/education
- Years of experience in your field

**Recommended elements:**
- Professional background and career history
- Specific areas of expertise
- Notable achievements or publications
- Links to professional profiles (LinkedIn, GitHub, Twitter/X)
- Speaking engagements or media appearances
- Email or contact information

**Example structure:**
```markdown
---
layout: page
title: About [Your Name]
description: "[Your title] specializing in [expertise areas]"
permalink: /about/
---

## Hi, I'm [Your Name]

[2-3 paragraphs about your background, expertise, and why you write]

### Professional Background
- **Current**: [Title] at [Company]
- **Previous**: [Relevant experience]
- **Education**: [Relevant degrees or certifications]

### Expertise
- [Area 1]: [Brief explanation of experience]
- [Area 2]: [Brief explanation of experience]
- [Area 3]: [Brief explanation of experience]

### Why I Write
[Your motivation for creating content and helping others]

### Connect With Me
- LinkedIn: [link]
- GitHub: [link]
- Twitter: [link]
- Email: [address]
```

### Linking Author Information

**In individual posts:**
Add author byline at the top:
```markdown
*By [Your Name](/about), [Title] with [X years] experience in [Field]*
```

**In post layout template:**
Consider adding an automatic author box:
```html
<div class="author-box">
  <img src="/images/author.jpg" alt="Your Name">
  <div>
    <h4>About the Author</h4>
    <p><strong>Your Name</strong> is a [title] with [X years] experience in [field].
    <a href="/about">Learn more</a></p>
  </div>
</div>
```

### Multi-Author Sites

If you have guest contributors:
- Create individual author pages for each contributor
- Always attribute posts to specific authors
- Include guest author credentials and bio
- Link to their professional profiles

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

## Common SEO & EEAT Mistakes to Avoid

### EEAT Mistakes

❌ **Don't:**
- **Lack author attribution**: Anonymous posts lack credibility
  - ✅ Fix: Always include author name and credentials
- **Compile without experience**: Rewriting documentation without first-hand knowledge
  - ✅ Fix: Only write about topics you have real experience with
- **Hide your credentials**: Readers can't verify your expertise
  - ✅ Fix: Create a comprehensive About page, add bylines to posts
- **Skip source citations**: Makes claims without backing them up
  - ✅ Fix: Link to authoritative sources (docs, research, .gov/.edu)
- **Ignore content updates**: Old, outdated information hurts trustworthiness
  - ✅ Fix: Add `last_modified_at` dates and update content regularly
- **Use clickbait titles**: Misleading titles damage trust
  - ✅ Fix: Accurately represent content in titles and descriptions
- **Copy others' content**: Duplicate or slightly-reworded content lacks experience
  - ✅ Fix: Write from your unique perspective and experiences
- **Avoid personal examples**: Generic tutorials without real-world context
  - ✅ Fix: Include screenshots, code, and results from your actual work

### Traditional SEO Mistakes

❌ **Don't:**
- Skip meta descriptions
- Use duplicate descriptions across posts
- Stuff keywords unnaturally
- Use generic titles like "Blog Post"
- Ignore image alt text
- Have broken internal links
- Create thin content (< 300 words without good reason)
- Forget to include publication dates
- Use stock photos without context

✅ **Do:**
- Write unique descriptions for every post (150-160 chars)
- Use natural language with relevant keywords
- Create descriptive, compelling titles
- Always add alt text to images
- Check links before publishing
- Aim for comprehensive, valuable content (typically 1000+ words)
- Update old posts when information changes
- Include clear dates and update timestamps
- Use your own screenshots and images when possible

### EEAT Quick Checklist

Before publishing any post, verify:

- [ ] **Author attribution** present with name and credentials
- [ ] **Personal experience** clearly demonstrated with examples
- [ ] **Credible sources** linked (official docs, research, authoritative sites)
- [ ] **Visual proof** included (screenshots, photos from your work)
- [ ] **Expertise signals** (explain your background and qualifications)
- [ ] **Publication date** visible
- [ ] **Update date** (if content has been revised)
- [ ] **Author bio/about page** exists and is linked
- [ ] **Accurate, fact-checked** information
- [ ] **Transparent** about affiliations, opinions, limitations

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

### Immediate EEAT Actions (High Priority)
1. ✅ Add meta descriptions to all existing posts
2. ✅ Fix typos in About page
3. ✅ Add Open Graph and Twitter Card metadata
4. ✅ Enhance structured data
5. 🔥 **Enhance About page with comprehensive credentials and expertise**
6. 🔥 **Add author attribution to all existing posts**
7. 🔥 **Review posts to add personal experience examples**
8. 🔥 **Add credible source citations to all posts**
9. ⏳ Set up Google Search Console verification
10. ⏳ Submit sitemap to Google

### Immediate Technical SEO Actions
- Add `author` field to all post front matter
- Add `last_modified_at` dates to existing posts
- Create author bylines template for reuse
- Set up author bio section in post layout
- Add "last updated" timestamps to posts

### Ongoing EEAT Optimization
**For every new post:**
- [ ] Include author name and credentials
- [ ] Start with personal experience/context
- [ ] Add screenshots from your actual work
- [ ] Link to 3-5 authoritative sources
- [ ] Include a "Resources" section at the end
- [ ] Add author bio/byline
- [ ] Date the post and commit to updates

**Monthly maintenance:**
- Review and update old posts (add `last_modified_at`)
- Respond to comments and engage with readers
- Check for broken links to external sources
- Add new examples from recent work
- Update screenshots if tools/UIs have changed

### Ongoing Traditional SEO
- Write compelling meta descriptions for new posts
- Add descriptive alt text to all images
- Monitor Search Console for issues
- Build internal links between related posts
- Track keyword rankings
- Optimize Core Web Vitals

## Resources

### EEAT & Content Quality
- [Google Search Quality Rater Guidelines](https://static.googleusercontent.com/media/guidelines.raterhub.com/en//searchqualityevaluatorguidelines.pdf) - Official EEAT guidelines
- [Creating Helpful Content](https://developers.google.com/search/docs/fundamentals/creating-helpful-content) - Google's content quality guidelines
- [Google's EEAT Explained](https://developers.google.com/search/blog/2022/12/google-raters-guidelines-e-e-a-t) - Official blog post on EEAT

### Traditional SEO Resources
- [Google SEO Starter Guide](https://developers.google.com/search/docs/fundamentals/seo-starter-guide)
- [Google Search Console](https://search.google.com/search-console)
- [Schema.org Documentation](https://schema.org/)
- [Open Graph Protocol](https://ogp.me/)
- [Twitter Card Validator](https://cards-dev.twitter.com/validator)

### Tools for Validation
- [Rich Results Test](https://search.google.com/test/rich-results) - Test structured data
- [PageSpeed Insights](https://pagespeed.web.dev/) - Check Core Web Vitals
- [Mobile-Friendly Test](https://search.google.com/test/mobile-friendly) - Mobile compatibility

## Questions?

For SEO-related questions or issues, refer to:
- This guide
- Google's official SEO documentation
- The site's CLAUDE.md for development guidance
