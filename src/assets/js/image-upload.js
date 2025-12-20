document.addEventListener("DOMContentLoaded", function () {
  const imageUploadInputs = document.querySelectorAll(".image-upload-input");

  imageUploadInputs.forEach((input) => {
    const previewContainer = document.getElementById(input.dataset.preview);

    if (previewContainer) {
      input.addEventListener("change", function () {
        const file = this.files[0];

        if (file) {
          const reader = new FileReader();

          reader.onload = function (e) {
            // Create an image element
            const img = document.createElement("img");
            img.src = e.target.result;
            img.style.maxWidth = "200px";
            img.style.maxHeight = "200px";
            img.style.marginTop = "10px";

            // Clear previous preview and show the new one
            previewContainer.innerHTML = "";
            previewContainer.appendChild(img);
          };

          reader.readAsDataURL(file);
        } else {
          // Clear the preview if no file is selected
          previewContainer.innerHTML = "No image selected";
        }
      });
    }
  });
});
