const darkModeSwitch = document.getElementById('dark-mode-switch');

darkModeSwitch.addEventListener('change', () => {
    document.body.classList.toggle('dark-mode');
});