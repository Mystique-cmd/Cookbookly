document.addEventListener("DOMContentLoaded", function () {
  // --- File Upload Drop Zone ---
  const dropZone = document.getElementById("drop-zone");

  if (dropZone) {
    // Prevent default drag behaviors
    ["dragenter", "dragover", "dragleave", "drop"].forEach((eventName) => {
      dropZone.addEventListener(eventName, preventDefaults, false);
    });

    function preventDefaults(e) {
      e.preventDefault();
      e.stopPropagation();
    }

    // Highlight drop zone when item is dragged over it
    ["dragenter", "dragover"].forEach((eventName) => {
      dropZone.addEventListener(
        eventName,
        () => dropZone.classList.add("highlight"),
        false,
      );
    });

    ["dragleave", "drop"].forEach((eventName) => {
      dropZone.addEventListener(
        eventName,
        () => dropZone.classList.remove("highlight"),
        false,
      );
    });

    // Handle dropped files
    dropZone.addEventListener("drop", handleDrop, false);

    function handleDrop(e) {
      const dt = e.dataTransfer;
      const files = dt.files;
      handleFiles(files);
    }

    // You can also trigger the file input from a click on the drop zone
    dropZone.addEventListener("click", () => {
      const fileInput = document.getElementById("file-upload-input"); // Assuming you have a file input
      if (fileInput) fileInput.click();
    });
  }

  function handleFiles(files) {
    files = [...files];
    // files.forEach(uploadFile); // You would have an uploadFile function
    files.forEach(previewFile); // And/or a previewFile function
  }

  function previewFile(file) {
    const reader = new FileReader();
    reader.readAsDataURL(file);
    reader.onloadend = function () {
      const img = document.createElement("img");
      img.src = reader.result;
      document.getElementById("gallery").appendChild(img); // Assuming a gallery element
    };
  }

  // --- Draggable List for Reordering ---
  const draggableList = document.querySelector(".draggable-list");
  let draggedItem = null;

  if (draggableList) {
    [...draggableList.children].forEach((item) => {
      item.setAttribute("draggable", true);

      item.addEventListener("dragstart", function () {
        draggedItem = this;
        setTimeout(() => {
          this.style.display = "none";
        }, 0);
      });

      item.addEventListener("dragend", function () {
        setTimeout(() => {
          draggedItem.style.display = "";
          draggedItem = null;
        }, 0);
      });

      item.addEventListener("dragover", function (e) {
        e.preventDefault();
        const afterElement = getDragAfterElement(draggableList, e.clientY);
        if (afterElement == null) {
          draggableList.appendChild(draggedItem);
        } else {
          draggableList.insertBefore(draggedItem, afterElement);
        }
      });
    });
  }

  function getDragAfterElement(container, y) {
    const draggableElements = [
      ...container.querySelectorAll(".draggable:not(.dragging)"),
    ];

    return draggableElements.reduce(
      (closest, child) => {
        const box = child.getBoundingClientRect();
        const offset = y - box.top - box.height / 2;
        if (offset < 0 && offset > closest.offset) {
          return { offset: offset, element: child };
        } else {
          return closest;
        }
      },
      { offset: Number.NEGATIVE_INFINITY },
    ).element;
  }
});

// Add CSS for drag and drop
const dragDropStyles = `
#drop-zone {
    border: 2px dashed #ccc;
    border-radius: 10px;
    padding: 50px;
    text-align: center;
    color: #ccc;
    cursor: pointer;
    transition: background-color 0.2s, border-color 0.2s;
}

#drop-zone.highlight {
    background-color: #f0f0f0;
    border-color: #00CC99;
}

.draggable-list .draggable {
    padding: 1rem;
    background-color: #fff;
    border: 1px solid #ddd;
    margin-bottom: 5px;
    cursor: move;
    transition: background-color 0.2s;
}

.draggable-list .draggable:hover {
    background-color: #f7f7f7;
}
`;

const styleSheet = document.createElement("style");
styleSheet.type = "text/css";
styleSheet.innerText = dragDropStyles;
document.head.appendChild(styleSheet);
