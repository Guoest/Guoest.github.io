// Theme toggle functionality
document.addEventListener('DOMContentLoaded', () => {
  console.log('Theme toggle script loaded');
  
  // Get existing toggle button
  const toggleButton = document.querySelector('.theme-toggle');
  if (!toggleButton) {
    console.error('Theme toggle button not found');
    return;
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

  // Function to update toggle state
  function updateToggleState(theme) {
    if (toggleButton) {
      if (theme === 'dark') {
        toggleButton.classList.add('active');
      } else {
        toggleButton.classList.remove('active');
      }
    }
  }
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

  // Function to update toggle state
  function updateToggleState(theme) {
    const toggleButton = document.querySelector('.theme-toggle');
    if (toggleButton) {
      if (theme === 'dark') {
        toggleButton.classList.add('active');
      } else {
        toggleButton.classList.remove('active');
      }
    }
  }
});
      document.documentElement.setAttribute('data-theme', newTheme);
      updateToggleState(newTheme);
    }
  });

  function updateToggleState(theme) {
    const slider = themeToggle.querySelector('.theme-toggle-slider');
    slider.style.transform = theme === 'dark' ? 'translateX(100%)' : 'translateX(0)';
  }
});