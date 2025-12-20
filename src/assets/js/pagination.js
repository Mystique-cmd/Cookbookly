document.addEventListener("DOMContentLoaded", function () {
  document.body.addEventListener("click", function (e) {
    // Check if a pagination link was clicked
    if (e.target.matches(".pagination-link")) {
      e.preventDefault();
      const page = e.target.dataset.page;
      const targetContainerId = e.target.closest(".pagination").dataset.target;
      const targetContainer = document.getElementById(targetContainerId);

      if (targetContainer) {
        // The URL to fetch content from should be stored in a data attribute
        // on the container that holds the content.
        const url = targetContainer.dataset.url;

        fetch(`${url}?page=${page}`)
          .then((response) => response.text())
          .then((html) => {
            targetContainer.innerHTML = html;
            // After loading new content, you might want to re-initialize
            // any scripts that apply to the new content.
          })
          .catch((error) => console.error("Error fetching page:", error));
      }
    }
  });
});

// Example of how the pagination HTML should be structured:
/*
<nav class="pagination" data-target="content-to-update">
    <a href="#" class="pagination-link" data-page="1">1</a>
    <a href="#" class="pagination-link" data-page="2">2</a>
    <a href="#" class="pagination-link" data-page="3">3</a>
</nav>

<div id="content-to-update" data-url="get_recipes.php">
    <!-- Initial content is loaded here -->
</div>
*/
