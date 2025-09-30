// Language detection and switching
(function() {
  'use strict';

  const LANG_KEY = 'preferred-language';
  const LANGUAGES = {
    EN: 'en',
    ZH: 'zh'
  };

  // Get current language from URL
  function getCurrentLanguage() {
    return window.location.pathname.startsWith('/zh') ? LANGUAGES.ZH : LANGUAGES.EN;
  }

  // Detect browser language
  function detectBrowserLanguage() {
    const browserLang = navigator.language || navigator.userLanguage;
    return browserLang.startsWith('zh') ? LANGUAGES.ZH : LANGUAGES.EN;
  }

  // Get stored language preference
  function getStoredLanguage() {
    return localStorage.getItem(LANG_KEY);
  }

  // Save language preference
  function saveLanguage(lang) {
    localStorage.setItem(LANG_KEY, lang);
  }

  // Convert URL between languages
  function getAlternateUrl(targetLang) {
    const currentPath = window.location.pathname;
    const currentLang = getCurrentLanguage();

    if (currentLang === targetLang) {
      return currentPath;
    }

    if (targetLang === LANGUAGES.ZH) {
      // English to Chinese: add /zh prefix
      return '/zh' + currentPath;
    } else {
      // Chinese to English: remove /zh prefix
      return currentPath.replace(/^\/zh/, '') || '/';
    }
  }

  // Redirect to target language
  function redirectToLanguage(targetLang) {
    const targetUrl = getAlternateUrl(targetLang);
    if (targetUrl !== window.location.pathname) {
      window.location.href = targetUrl;
    }
  }

  // Auto-redirect on first visit
  function autoRedirect() {
    const storedLang = getStoredLanguage();
    const currentLang = getCurrentLanguage();

    // If user has a stored preference, respect it
    if (storedLang && storedLang !== currentLang) {
      redirectToLanguage(storedLang);
      return;
    }

    // If no stored preference, check browser language on first visit
    if (!storedLang) {
      const browserLang = detectBrowserLanguage();
      if (browserLang !== currentLang) {
        saveLanguage(browserLang);
        redirectToLanguage(browserLang);
      } else {
        saveLanguage(currentLang);
      }
    }
  }

  // Initialize language toggle
  function initLanguageToggle() {
    const toggle = document.getElementById('languageToggle');
    if (!toggle) return;

    const currentLang = getCurrentLanguage();
    const toggleText = toggle.nextElementSibling.querySelector('.toggle-text');

    // Set initial state
    toggle.checked = currentLang === LANGUAGES.ZH;
    if (toggleText) {
      toggleText.textContent = currentLang === LANGUAGES.ZH ? '中文' : 'EN';
    }

    // Handle toggle change
    toggle.addEventListener('change', function() {
      const targetLang = this.checked ? LANGUAGES.ZH : LANGUAGES.EN;
      saveLanguage(targetLang);
      redirectToLanguage(targetLang);
    });
  }

  // Run on page load
  document.addEventListener('DOMContentLoaded', function() {
    autoRedirect();
    initLanguageToggle();
  });
})();