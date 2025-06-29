# Yicheng Guo's Blog

A personal blog built with Jekyll featuring Tech and Life categories.

## Site Structure

- **Tech**: Articles about technology, machine learning, AI, and software development
- **Life**: Personal stories, reflections, and experiences about life beyond technology

## Run locally

```bash
bundle install
bundle exec jekyll serve
```

Then go to

```
localhost:4000
```

## Creating New Posts

### Tech Posts

Create a new markdown file in the `_posts` directory with the following format:

```markdown
---
layout: post
title: "Your Tech Post Title"
categories: [tech]
date: YYYY-MM-DD
---

Content goes here...
```

### Life Posts

Create a new markdown file in the `_posts` directory with the following format:

```markdown
---
layout: post
title: "Your Life Post Title"
categories: [life]
date: YYYY-MM-DD
---

Content goes here...
```

You can also use both categories if the content is relevant to both:

```markdown
---
layout: post
title: "Your Mixed Post Title"
categories: [tech, life]
date: YYYY-MM-DD
---

Content goes here...
```