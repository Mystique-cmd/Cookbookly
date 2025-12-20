document.addEventListener("DOMContentLoaded", function () {
  // Handle review form submission
  const reviewForm = document.getElementById("review-form");
  if (reviewForm) {
    reviewForm.addEventListener("submit", function (e) {
      e.preventDefault();
      const formData = new FormData(this);
      const recipeId = this.dataset.recipeId;

      // Basic validation
      if (!formData.get("rating") || !formData.get("comment").trim()) {
        alert("Please provide a rating and a comment.");
        return;
      }

      // AJAX request to submit review
      fetch("submit_review.php", {
        method: "POST",
        body: formData,
      })
        .then((response) => response.json())
        .then((data) => {
          if (data.success) {
            // Add the new review to the UI
            addReviewToDOM(data.review);
            this.reset();
          } else {
            alert(data.message || "There was an error submitting your review.");
          }
        })
        .catch((error) => console.error("Error:", error));
    });
  }

  // Handle review deletion
  document.addEventListener("click", function (e) {
    if (e.target.classList.contains("delete-review-btn")) {
      const reviewId = e.target.dataset.reviewId;
      if (confirm("Are you sure you want to delete this review?")) {
        // AJAX request to delete review
        fetch(`delete_review.php?id=${reviewId}`, {
          method: "GET", // Or POST with a token for CSRF protection
        })
          .then((response) => response.json())
          .then((data) => {
            if (data.success) {
              // Remove the review from the UI
              document.getElementById(`review-${reviewId}`).remove();
            } else {
              alert(data.message || "Failed to delete review.");
            }
          })
          .catch((error) => console.error("Error:", error));
      }
    }
  });

  // Function to add a new review to the DOM
  function addReviewToDOM(review) {
    const reviewList = document.querySelector(".review-list");
    if (reviewList) {
      const reviewElement = document.createElement("div");
      reviewElement.id = `review-${review.id}`;
      reviewElement.classList.add("review");
      reviewElement.innerHTML = `
                <div class="review-author">${review.author}</div>
                <div class="review-rating">Rating: ${review.rating}/5</div>
                <div class="review-comment">${review.comment}</div>
                <div class="review-actions">
                    <a href="edit_review.php?id=${review.id}">Edit</a>
                    <button class="delete-review-btn" data-review-id="${review.id}">Delete</button>
                </div>
            `;
      reviewList.prepend(reviewElement);
    }
  }
});
