document.addEventListener("DOMContentLoaded", function () {
  const filterForm = document.getElementById("filter-form");
  const recipeContainer = document.getElementById("recipe-container"); // The container for the recipes

  if (filterForm && recipeContainer) {
    filterForm.addEventListener("change", function () {
      const formData = new FormData(filterForm);
      const params = new URLSearchParams(formData);
      const url = `${filterForm.action}?${params.toString()}`;

      // Perform AJAX request
      fetch(url, {
        headers: {
          "X-Requested-With": "XMLHttpRequest",
        },
      })
        .then((response) => response.text())
        .then((html) => {
          recipeContainer.innerHTML = html;
        })
        .catch((error) => console.error("Error applying filters:", error));
    });
  }
});

// Example HTML structure for the filter form and recipe container:
/*
<form id="filter-form" action="filter_recipes.php" method="GET">
    <div class="filter-group">
        <h4>Category</h4>
        <label><input type="checkbox" name="category[]" value="1"> Appetizers</label>
        <label><input type="checkbox" name="category[]" value="2"> Main Courses</label>
        <label><input type="checkbox" name="category[]" value="3"> Desserts</label>
    </div>
    <div class="filter-group">
        <h4>Health Condition</h4>
        <label><input type="checkbox" name="health[]" value="1"> Diabetic Friendly</label>
        <label><input type="checkbox" name="health[]" value="2"> Gluten Free</label>
    </div>
</form>

<div id="recipe-container">
    <!-- Filtered recipes will be loaded here -->
</div>
*/
