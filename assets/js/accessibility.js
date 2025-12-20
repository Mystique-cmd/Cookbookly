document.addEventListener('DOMContentLoaded', () => {
    // 1. Skip to main content link
    const skipLink = document.createElement('a');
    skipLink.href = '#main-content';
    skipLink.className = 'skip-to-main-content';
    skipLink.textContent = 'Skip to main content';
    skipLink.style.cssText = 'position: absolute; left: -9999px; top: auto; width: 1px; height: 1px; overflow: hidden; z-index: -999;';
    document.body.prepend(skipLink);

    skipLink.addEventListener('focus', () => {
        skipLink.style.cssText = 'position: static; width: auto; height: auto; overflow: visible;';
    });

    skipLink.addEventListener('blur', () => {
        skipLink.style.cssText = 'position: absolute; left: -9999px; top: auto; width: 1px; height: 1px; overflow: hidden; z-index: -999;';
    });

    // Ensure main content has an ID for the skip link
    const mainContent = document.getElementById('main-content');
    if (!mainContent) {
        const mainElement = document.querySelector('main');
        if (mainElement) {
            mainElement.id = 'main-content';
        }
    }

    // 2. Enhance focus visibility (usually handled by CSS :focus-visible, but good to ensure)
    // This script ensures a class is added for keyboard users if :focus-visible isn't fully supported or for custom styling
    document.body.addEventListener('mousedown', () => {
        document.body.classList.add('using-mouse');
    });

    document.body.addEventListener('keydown', (e) => {
        if (e.key === 'Tab') {
            document.body.classList.remove('using-mouse');
        }
    });

    // 3. ARIA attributes for navigation (example for a common nav structure)
    const nav = document.querySelector('nav');
    if (nav) {
        const navList = nav.querySelector('ul');
        if (navList) {
            nav.setAttribute('role', 'navigation');
            navList.setAttribute('role', 'menubar');
            Array.from(navList.children).forEach(item => {
                item.setAttribute('role', 'none'); // li elements
                const link = item.querySelector('a');
                if (link) {
                    link.setAttribute('role', 'menuitem');
                }
            });
        }
    }

    // 4. Font size adjustment
    const FONT_SIZE_STORAGE_KEY = 'userFontSize';
    const defaultFontSize = 16; // px

    function setFontSize(size) {
        document.documentElement.style.fontSize = `${size}px`;
        localStorage.setItem(FONT_SIZE_STORAGE_KEY, size);
    }

    function getStoredFontSize() {
        return parseInt(localStorage.getItem(FONT_SIZE_STORAGE_KEY) || defaultFontSize, 10);
    }

    // Apply stored font size on load
    setFontSize(getStoredFontSize());

    // Add controls for font size (example: buttons in a settings/accessibility menu)
    // Assuming there might be buttons like <button id="increase-font">A+</button> <button id="decrease-font">A-</button>
    const increaseFontBtn = document.getElementById('increase-font');
    const decreaseFontBtn = document.getElementById('decrease-font');
    const resetFontBtn = document.getElementById('reset-font');

    if (increaseFontBtn) {
        increaseFontBtn.addEventListener('click', () => {
            let currentSize = getStoredFontSize();
            if (currentSize < 24) { // Max font size
                setFontSize(currentSize + 2);
            }
        });
    }

    if (decreaseFontBtn) {
        decreaseFontBtn.addEventListener('click', () => {
            let currentSize = getStoredFontSize();
            if (currentSize > 12) { // Min font size
                setFontSize(currentSize - 2);
            }
        });
    }

    if (resetFontBtn) {
        resetFontBtn.addEventListener('click', () => {
            setFontSize(defaultFontSize);
        });
    }

    // 5. Basic Modal Accessibility (assuming a generic modal structure)
    // This is a simplified example. A full modal solution would be more complex.
    const modals = document.querySelectorAll('.modal[role="dialog"]');
    modals.forEach(modal => {
        modal.setAttribute('aria-modal', 'true');
        modal.setAttribute('tabindex', '-1'); // Make modal focusable

        const closeButton = modal.querySelector('.modal-close-button');
        if (closeButton) {
            closeButton.setAttribute('aria-label', 'Close dialog');
        }

        // Trap focus within the modal
        modal.addEventListener('keydown', (e) => {
            if (e.key === 'Tab') {
                const focusableElements = modal.querySelectorAll(
                    'a[href], button, input, textarea, select, details, [tabindex]:not([tabindex="-1"])'
                );
                const firstFocusable = focusableElements[0];
                const lastFocusable = focusableElements[focusableElements.length - 1];

                if (e.shiftKey) { // Shift + Tab
                    if (document.activeElement === firstFocusable) {
                        lastFocusable.focus();
                        e.preventDefault();
                    }
                } else { // Tab
                    if (document.activeElement === lastFocusable) {
                        firstFocusable.focus();
                        e.preventDefault();
                    }
                }
            } else if (e.key === 'Escape') {
                // Assuming a function to close the modal exists
                // closeModal(modal);
            }
        });
    });

    // Announce page title changes for screen readers (SPA considerations)
    // If this were a Single Page Application, you'd update this on route changes.
    // For traditional multi-page apps, the browser handles this.
    // Example for dynamic content updates:
    // const announceRegion = document.createElement('div');
    // announceRegion.setAttribute('aria-live', 'polite');
    // announceRegion.setAttribute('aria-atomic', 'true');
    // announceRegion.className = 'sr-only'; // Visually hidden
    // document.body.appendChild(announceRegion);
    // function announce(message) {
    //     announceRegion.textContent = '';
    //     setTimeout(() => {
    //         announceRegion.textContent = message;
    //     }, 100);
    // }
    // Example usage: announce('New content loaded');

});