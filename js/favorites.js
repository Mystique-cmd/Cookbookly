document.addEventListener("DOMContentLoaded", function () {
  document.body.addEventListener("click", function (e) {
    const target = e.target;

    // Check if the clicked element is a favorite button
    if (target.matches(".favorite-btn")) {
      e.preventDefault();
      const recipeId = target.dataset.recipeId;
      const isFavorited = target.classList.contains("favorited");

      const url = isFavorited ? "remove_favorite.php" : "add_favorite.php";

      // AJAX request to add/remove favorite
      fetch(url, {
        method: "POST",
        headers: {
          "Content-Type": "application/x-www-form-urlencoded",
        },
        body: `recipe_id=${recipeId}`,
      })
        .then((response) => response.json())
        .then((data) => {
          if (data.success) {
            // Toggle the button's state
            target.classList.toggle("favorited");

            // Update the button text/icon
            if (target.classList.contains("favorited")) {
              target.innerHTML = '<i class="fas fa-heart"></i> Favorited';
            } else {
              target.innerHTML =
                '<i class="far fa-heart"></i> Add to Favorites';
            }

            // If on the favorites page, remove the item from the list
            if (
              isFavorited &&
              window.location.pathname.includes("favorites.php")
            ) {
              const recipeCard = target.closest(".recipe-card");
              if (recipeCard) {
                recipeCard.remove();
              }
            }
          } else {
            alert(data.message || "An error occurred.");
          }
        })
        .catch((error) => console.error("Error:", error));
    }
  });
});
