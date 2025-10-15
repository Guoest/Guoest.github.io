---
layout: post
title: "{{TITLE}}"
categories: [life]
date: {{DATE}}
# SEO fields (IMPORTANT - Fill these out!)
description: "Write a compelling 150-160 character description that tells readers what this story is about. Make it engaging and personal!"
image: /images/{{SLUG}}/hero.jpg  # Featured image for social sharing
# Optional SEO fields:
# author: Yicheng Guo  # Uncomment if different from site default
---

<div class="table-of-contents" markdown="1">
### Contents
- [Setting the Scene](#setting-the-scene)
- [The Experience](#the-experience)
- [Reflections](#reflections)
- [Lessons Learned](#lessons-learned)
</div>

<!-- Hero image - a moment from your story -->
{% include image.html src="/images/{{SLUG}}/hero.jpg" alt="{{TITLE}}" caption="A moment from {{TITLE}}" %}

## Setting the Scene

Start with the context. Where were you? What was happening in your life? Set the stage for your story.

## The Experience

### The Beginning
How did this experience start? What were your initial thoughts or feelings?

<!-- Personal photo or screenshot -->
{% include image.html src="/images/{{SLUG}}/moment-1.jpg" alt="The beginning" %}

### The Journey
Tell the main story. What happened? How did you feel? What challenges did you face?

> "A meaningful quote from the experience or someone involved"

<!-- Photo gallery of key moments -->
<div class="image-gallery">
  {% include image.html src="/images/{{SLUG}}/gallery-1.jpg" alt="Moment 1" class="" %}
  {% include image.html src="/images/{{SLUG}}/gallery-2.jpg" alt="Moment 2" class="" %}
  {% include image.html src="/images/{{SLUG}}/gallery-3.jpg" alt="Moment 3" class="" %}
</div>

### The Turning Point
Was there a moment that changed everything? A realization? A decision?

{% include image.html src="/images/{{SLUG}}/turning-point.jpg" alt="The turning point" caption="The moment everything changed" %}

## Reflections

### What I Learned About Myself
- Personal insight 1
- Personal insight 2
- Personal insight 3

### What I Learned About Others
- Observation about people or relationships
- Understanding about human nature
- Appreciation for someone specific

### What I Learned About Life
- Life lesson 1
- Life lesson 2
- Perspective shift

## Lessons Learned

### For Future Me
What would you tell yourself if you faced this situation again?

### For Others
What advice would you give to someone in a similar situation?

{% include info.html text="💭 **Reflection Question**: How has this experience shaped who you are today?" %}

---

**Tags**: #personal-growth #life-lessons #{{SLUG}}

**Gratitude**: Take a moment to thank someone who was part of this journey.