document.addEventListener("DOMContentLoaded", function () {
  // Open modal
  document.body.addEventListener("click", function (e) {
    if (e.target.matches("[data-modal-target]")) {
      const modalId = e.target.dataset.modalTarget;
      const modal = document.getElementById(modalId);
      if (modal) {
        openModal(modal);
      }
    }

    // Open modal with AJAX content
    if (e.target.matches("[data-modal-ajax]")) {
      const url = e.target.dataset.modalAjax;
      openAjaxModal(url);
    }
  });

  // Close modal
  document.body.addEventListener("click", function (e) {
    if (e.target.matches(".modal-close, .modal-background")) {
      const modal = e.target.closest(".modal");
      if (modal) {
        closeModal(modal);
      }
    }
  });

  // Close modal with Escape key
  document.addEventListener("keydown", function (e) {
    if (e.key === "Escape") {
      const openModal = document.querySelector(".modal.is-active");
      if (openModal) {
        closeModal(openModal);
      }
    }
  });

  function openModal(modal) {
    modal.classList.add("is-active");
    document.documentElement.classList.add("is-clipped"); // Prevents background scrolling
  }

  function closeModal(modal) {
    modal.classList.remove("is-active");
    if (!document.querySelector(".modal.is-active")) {
      document.documentElement.classList.remove("is-clipped");
    }
  }

  function openAjaxModal(url) {
    let modal = document.getElementById("ajax-modal");
    if (!modal) {
      modal = createModalShell("ajax-modal");
      document.body.appendChild(modal);
    }

    const modalContent = modal.querySelector(".modal-content");
    modalContent.innerHTML = "<p>Loading...</p>"; // Show a loader
    openModal(modal);

    fetch(url)
      .then((response) => response.text())
      .then((html) => {
        modalContent.innerHTML = html;
      })
      .catch((error) => {
        modalContent.innerHTML = `<p>Error loading content: ${error.message}</p>`;
      });
  }

  function createModalShell(id) {
    const modal = document.createElement("div");
    modal.id = id;
    modal.className = "modal";
    modal.innerHTML = `
            <div class="modal-background"></div>
            <div class="modal-card">
                <header class="modal-card-head">
                    <p class="modal-card-title">Modal Title</p>
                    <button class="delete modal-close" aria-label="close"></button>
                </header>
                <section class="modal-card-body">
                    <!-- Content will be loaded here -->
                </section>
            </div>
        `;
    return modal;
  }
});

// Add CSS for the modals
const modalStyles = `
.modal {
    display: none;
    position: fixed;
    top: 0;
    left: 0;
    width: 100%;
    height: 100%;
    align-items: center;
    justify-content: center;
    z-index: 1060;
}

.modal.is-active {
    display: flex;
}

.modal-background {
    position: absolute;
    top: 0;
    left: 0;
    width: 100%;
    height: 100%;
    background-color: rgba(0, 0, 0, 0.75);
}

.modal-card {
    position: relative;
    background-color: #fff;
    border-radius: 8px;
    width: 90%;
    max-width: 640px;
    display: flex;
    flex-direction: column;
    max-height: calc(100vh - 40px);
}

.modal-card-head {
    display: flex;
    justify-content: space-between;
    align-items: center;
    padding: 1rem 1.5rem;
    border-bottom: 1px solid #dbdbdb;
}

.modal-card-title {
    font-size: 1.5rem;
    font-weight: 700;
    margin: 0;
}

.modal-card-body {
    padding: 1.5rem;
    overflow-y: auto;
}

.is-clipped {
    overflow: hidden;
}
`;

const styleSheet = document.createElement("style");
styleSheet.type = "text/css";
styleSheet.innerText = modalStyles;
document.head.appendChild(styleSheet);
