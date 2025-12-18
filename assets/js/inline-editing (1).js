document.addEventListener("DOMContentLoaded", function () {
  document.body.addEventListener("dblclick", function (e) {
    const target = e.target;

    if (target.matches(".editable")) {
      makeEditable(target);
    }
  });

  function makeEditable(element) {
    const originalContent = element.textContent;
    const elementType = element.tagName.toLowerCase();
    let input;

    if (elementType === "textarea") {
      input = document.createElement("textarea");
      input.style.height = element.style.height;
      input.style.width = element.style.width;
    } else {
      input = document.createElement("input");
      input.type = "text";
    }

    input.value = originalContent;
    element.replaceWith(input);
    input.focus();

    input.addEventListener("blur", () =>
      saveChanges(input, originalContent, element),
    );
    input.addEventListener("keydown", (e) => {
      if (e.key === "Enter") {
        input.blur();
      } else if (e.key === "Escape") {
        revertChanges(input, element);
      }
    });
  }

  function saveChanges(input, originalContent, originalElement) {
    const newContent = input.value;
    const url = originalElement.dataset.saveUrl;
    const field = originalElement.dataset.field;
    const id = originalElement.dataset.id;

    if (newContent !== originalContent && url) {
      const formData = new FormData();
      formData.append("id", id);
      formData.append("field", field);
      formData.append("value", newContent);

      fetch(url, {
        method: "POST",
        body: formData,
      })
        .then((response) => response.json())
        .then((data) => {
          if (data.success) {
            originalElement.textContent = newContent;
            if (window.showNotification) {
              window.showNotification("Content updated!", "success");
            }
          } else {
            originalElement.textContent = originalContent; // Revert on failure
            if (window.showNotification) {
              window.showNotification(
                data.message || "Failed to save.",
                "error",
              );
            }
          }
          input.replaceWith(originalElement);
        })
        .catch((error) => {
          console.error("Error saving content:", error);
          originalElement.textContent = originalContent;
          input.replaceWith(originalElement);
        });
    } else {
      originalElement.textContent = newContent;
      input.replaceWith(originalElement);
    }
  }

  function revertChanges(input, originalElement) {
    input.replaceWith(originalElement);
  }
});

// Example HTML:
// <h2 class="editable" data-save-url="update_recipe.php" data-field="title" data-id="123">Recipe Title</h2>
// <p class="editable" data-save-url="update_recipe.php" data-field="description" data-id="123">Recipe description.</p>
