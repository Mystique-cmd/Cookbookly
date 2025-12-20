document.addEventListener("DOMContentLoaded", function () {
  const preferencesForm = document.getElementById("health-preferences-form");

  if (preferencesForm) {
    preferencesForm.addEventListener("submit", function (e) {
      e.preventDefault();

      const formData = new FormData(this);

      fetch("update_health_preferences.php", {
        method: "POST",
        body: formData,
      })
        .then((response) => response.json())
        .then((data) => {
          if (data.success) {
            // Use the notification system to show a success message
            if (window.showNotification) {
              window.showNotification(
                "Health preferences updated successfully!",
                "success",
              );
            } else {
              alert("Health preferences updated successfully!");
            }
          } else {
            if (window.showNotification) {
              window.showNotification(
                data.message || "Failed to update preferences.",
                "error",
              );
            } else {
              alert(data.message || "Failed to update preferences.");
            }
          }
        })
        .catch((error) => {
          console.error("Error updating preferences:", error);
          if (window.showNotification) {
            window.showNotification("An unexpected error occurred.", "error");
          } else {
            alert("An unexpected error occurred.");
          }
        });
    });
  }
});

// Example HTML structure for the health preferences form:
/*
<form id="health-preferences-form" method="POST">
    <h3>My Health Preferences</h3>
    <div class="form-group">
        <label><input type="checkbox" name="health_conditions[]" value="1"> Diabetic Friendly</label>
    </div>
    <div class="form-group">
        <label><input type="checkbox" name="health_conditions[]" value="2"> Gluten Free</label>
    </div>
    <div class="form-group">
        <label><input type="checkbox" name="health_conditions[]" value="3"> Low Calorie</label>
    </div>
    <button type="submit" class="btn btn-primary">Save Preferences</button>
</form>
*/
