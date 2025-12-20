document.addEventListener('DOMContentLoaded', function() {
    const lazyLoadImages = document.querySelectorAll('.lazy-load');

    const observer = new IntersectionObserver(entries => {
        entries.forEach(entry => {
            if (entry.isIntersecting) {
                const img = entry.target;
                img.src = img.dataset.src;
                img.classList.remove('lazy-load');
                observer.unobserve(img);
            }
        });
    });

    lazyLoadImages.forEach(img => {
        observer.observe(img);
    });
});