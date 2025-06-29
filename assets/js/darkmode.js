// Simple dark mode toggle
document.addEventListener('DOMContentLoaded', function() {
  const darkModeToggle = document.getElementById('darkModeToggle');
  
  if (!darkModeToggle) {
    console.error('Dark mode toggle button not found');
    return;
  }
  
  // Check for saved theme preference or use system preference
  const prefersDarkScheme = window.matchMedia('(prefers-color-scheme: dark)');
  const storedTheme = localStorage.getItem('theme');
  const currentTheme = storedTheme || (prefersDarkScheme.matches ? 'dark' : 'light');
  
  // Apply the theme
  document.documentElement.setAttribute('data-theme', currentTheme);
  
  // Set the toggle switch state based on theme
  darkModeToggle.checked = currentTheme === 'dark';
  updateToggleText(darkModeToggle);
  
  // Toggle theme on switch change
  darkModeToggle.addEventListener('change', function() {
    const newTheme = this.checked ? 'dark' : 'light';
    
    document.documentElement.setAttribute('data-theme', newTheme);
    localStorage.setItem('theme', newTheme);
    updateToggleText(this);
  });
  
  // Update toggle text based on state
  function updateToggleText(toggle) {
    const toggleText = toggle.nextElementSibling.querySelector('.toggle-text');
    if (toggleText) {
      toggleText.textContent = toggle.checked ? 'Dark' : 'Light';
    }
  }
  
  // Listen for system theme changes if no theme is stored
  prefersDarkScheme.addEventListener('change', function(e) {
    if (!localStorage.getItem('theme')) {
      const newTheme = e.matches ? 'dark' : 'light';
      document.documentElement.setAttribute('data-theme', newTheme);
      darkModeToggle.checked = newTheme === 'dark';
      updateToggleText(darkModeToggle);
    }
  });
});
