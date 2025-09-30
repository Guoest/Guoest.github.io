---
layout: default
lang: zh
permalink: /zh/
---

<div class="home">
  <!-- Hero Section -->
  <section class="hero-section">
    <div class="hero-content">
      <h1>Yicheng的博客</h1>
      <p class="subtitle">探索科技与生活的交汇点</p>
    </div>
  </section>

  <!-- Main Categories -->
  <section class="categories-section">
    <div class="categories-container">
      <div class="category-card tech-card">
        <div class="card-icon">💻</div>
        <h2><a href="/zh/categories/tech/">技术</a></h2>
        <p>深入探讨人工智能、机器学习和创新技术。探索我对前沿发展和技术见解的思考。</p>
        <a href="/zh/categories/tech/" class="category-link">浏览技术文章 →</a>
      </div>

      <div class="category-card life-card">
        <div class="card-icon">✨</div>
        <h2><a href="/zh/categories/life/">生活</a></h2>
        <p>技术之外的个人故事、反思和体验。与我一起探索数字世界的人性化一面。</p>
        <a href="/zh/categories/life/" class="category-link">浏览生活文章 →</a>
      </div>
    </div>
  </section>

  <!-- About Brief -->
  <section class="about-brief">
    <h2>关于我</h2>
    <p>我撰写关于技术和生活经历的文章，分享我在科技领域及其他方面的见解。这个博客是我记录学习和反思的地方。</p>
    <a href="/zh/about/" class="about-link">了解更多关于我 →</a>
  </section>

  <!-- Buy Me a Coffee -->
  <section class="support-section">
    {% include buy-me-coffee.html style="card" title="支持我的创作" message="如果您喜欢我的内容并觉得有价值，可以请我喝杯咖啡来支持我的写作！" %}
  </section>
</div>

<style>
  /* Minimalist Styles */
  .home {
    max-width: 1000px;
    margin: 0 auto;
    padding: 20px;
  }

  /* Hero Section */
  .hero-section {
    text-align: center;
    padding: 60px 0;
    margin-bottom: 40px;
    border-radius: 8px;
    background: linear-gradient(120deg, #f5f7fa 0%, #c3cfe2 100%);
  }

  [data-theme="dark"] .hero-section {
    background: linear-gradient(120deg, #2d3748 0%, #1a202c 100%);
  }

  .hero-content {
    max-width: 700px;
    margin: 0 auto;
  }

  .hero-content h1 {
    font-size: 3rem;
    margin-bottom: 1rem;
    color: #2d3748;
  }

  [data-theme="dark"] .hero-content h1 {
    color: #e2e8f0;
  }

  .subtitle {
    color: #4a5568;
    font-size: 1.4rem;
    margin-bottom: 2rem;
  }

  [data-theme="dark"] .subtitle {
    color: #a0aec0;
  }

  .hero-buttons {
    display: flex;
    justify-content: center;
    gap: 20px;
  }

  .hero-button {
    display: inline-block;
    padding: 12px 24px;
    border-radius: 30px;
    text-decoration: none;
    font-weight: 600;
    transition: all 0.3s ease;
  }

  .tech-button {
    background-color: #3182ce;
    color: white;
  }

  .tech-button:hover {
    background-color: #2b6cb0;
    transform: translateY(-2px);
  }

  .life-button {
    background-color: #38b2ac;
    color: white;
  }

  .life-button:hover {
    background-color: #319795;
    transform: translateY(-2px);
  }

  /* Categories Section */
  .categories-section {
    margin: 60px 0;
  }

  .categories-container {
    display: flex;
    gap: 30px;
  }

  .category-card {
    flex: 1;
    padding: 30px;
    border-radius: 8px;
    background-color: #fff;
    box-shadow: 0 4px 6px rgba(0, 0, 0, 0.05);
    transition: transform 0.3s ease, box-shadow 0.3s ease;
  }

  .category-card:hover {
    transform: translateY(-5px);
    box-shadow: 0 10px 15px rgba(0, 0, 0, 0.1);
  }

  [data-theme="dark"] .category-card {
    background-color: #2d3748;
    box-shadow: 0 4px 6px rgba(0, 0, 0, 0.2);
  }

  [data-theme="dark"] .category-card:hover {
    box-shadow: 0 10px 15px rgba(0, 0, 0, 0.3);
  }

  .card-icon {
    font-size: 2.5rem;
    margin-bottom: 20px;
  }

  .category-card h2 {
    margin-top: 0;
    font-size: 1.8rem;
    margin-bottom: 15px;
  }

  .category-card p {
    margin-bottom: 20px;
    color: #4a5568;
    line-height: 1.6;
  }

  [data-theme="dark"] .category-card p {
    color: #a0aec0;
  }

  .category-card a {
    text-decoration: none;
    color: #2d3748;
  }

  [data-theme="dark"] .category-card a {
    color: #e2e8f0;
  }

  .category-link {
    display: inline-block;
    font-weight: 600;
    color: #3182ce !important;
  }

  [data-theme="dark"] .category-link {
    color: #63b3ed !important;
  }

  /* About Brief Section */
  .about-brief {
    text-align: center;
    padding: 40px;
    background-color: #f7fafc;
    border-radius: 8px;
    margin: 60px 0 40px;
  }

  [data-theme="dark"] .about-brief {
    background-color: #2d3748;
  }

  .about-brief h2 {
    margin-top: 0;
    margin-bottom: 20px;
    font-size: 1.8rem;
  }

  .about-brief p {
    max-width: 700px;
    margin: 0 auto 20px;
    line-height: 1.6;
    color: #4a5568;
  }

  [data-theme="dark"] .about-brief p {
    color: #a0aec0;
  }

  .about-link {
    display: inline-block;
    font-weight: 600;
    color: #3182ce;
    text-decoration: none;
  }

  [data-theme="dark"] .about-link {
    color: #63b3ed;
  }

  /* Mobile responsive */
  @media (max-width: 768px) {
    .categories-container {
      flex-direction: column;
    }

    .hero-content h1 {
      font-size: 2.5rem;
    }

    .subtitle {
      font-size: 1.2rem;
    }

    .hero-buttons {
      flex-direction: column;
      gap: 15px;
    }

    .hero-section {
      padding: 40px 20px;
    }
  }
</style>