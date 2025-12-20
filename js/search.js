document.addEventListener("DOMContentLoaded", function () {
  const searchInput = document.getElementById("search-input");
  const searchResultsContainer = document.getElementById("search-results");
  const recipeGrid = document.querySelector(".recipe-grid"); // The main grid to replace

  let debounceTimer;

  if (searchInput) {
    searchInput.addEventListener("input", function () {
      clearTimeout(debounceTimer);
      const query = this.value;

      debounceTimer = setTimeout(() => {
        if (query.length > 2) {
          performSearch(query);
        } else if (query.length === 0) {
          // Optional: Restore original content if search is cleared
          // You might need a separate function to fetch all recipes again
        }
      }, 300); // 300ms delay
    });
  }

  function performSearch(query) {
    fetch(`search.php?q=${encodeURIComponent(query)}`)
      .then((response) => response.text()) // Expecting HTML response
      .then((html) => {
        if (recipeGrid) {
          recipeGrid.innerHTML = html;
        } else if (searchResultsContainer) {
          searchResultsContainer.innerHTML = html;
        }
      })
      .catch((error) => console.error("Error performing search:", error));
  }
});
