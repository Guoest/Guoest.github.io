// Theme toggle functionality
document.addEventListener('DOMContentLoaded', () => {
  console.log('Theme toggle script loaded');
  
  const themeToggle = document.createElement('div');
  themeToggle.className = 'theme-toggle-container';
  themeToggle.innerHTML = `
    <span class="theme-toggle-label">Dark Mode</span>
    <button class="theme-toggle" aria-label="Toggle theme">
      <span class="theme-toggle-slider"></span>
    </button>
  `;

  // Add the button to the header instead of body
  const header = document.querySelector('header');
  if (header) {
    header.appendChild(themeToggle);
    console.log('Theme toggle button added to header');
  } else {
    document.body.appendChild(themeToggle);
    console.log('Theme toggle button added to body (header not found)');
  }

  // Check for saved theme preference or use system preference
  const prefersDarkScheme = window.matchMedia('(prefers-color-scheme: dark)');
  const currentTheme = localStorage.getItem('theme') || 
    (prefersDarkScheme.matches ? 'dark' : 'light');

  console.log('Current theme:', currentTheme);

  // Apply the saved theme
  document.documentElement.setAttribute('data-theme', currentTheme);
  updateToggleState(currentTheme);

  // Toggle theme on button click
  const toggleButton = themeToggle.querySelector('.theme-toggle');
  toggleButton.addEventListener('click', () => {
    const currentTheme = document.documentElement.getAttribute('data-theme');
    const newTheme = currentTheme === 'dark' ? 'light' : 'dark';
    
    console.log('Switching theme to:', newTheme);
    document.documentElement.setAttribute('data-theme', newTheme);
    localStorage.setItem('theme', newTheme);
    updateToggleState(newTheme);
  });

  // Listen for system theme changes
  prefersDarkScheme.addEventListener('change', (e) => {
    if (!localStorage.getItem('theme')) {
      const newTheme = e.matches ? 'dark' : 'light';
      console.log('System theme changed to:', newTheme);
      document.documentElement.setAttribute('data-theme', newTheme);
      updateToggleState(newTheme);
    }
  });

  function updateToggleState(theme) {
    const slider = themeToggle.querySelector('.theme-toggle-slider');
    slider.style.transform = theme === 'dark' ? 'translateX(100%)' : 'translateX(0)';
  }
});