document.addEventListener("DOMContentLoaded", function () {
  // Mobile Menu Toggle
  const nav = document.querySelector("nav ul");
  const menuIcon = document.createElement("i");
  menuIcon.classList.add("fas", "fa-bars", "mobile-menu-icon");
  document.querySelector("header .container").appendChild(menuIcon);

  menuIcon.addEventListener("click", () => {
    nav.classList.toggle("active");
  });

  // Close mobile menu when a link is clicked
  const navLinks = document.querySelectorAll("nav ul li a");
  navLinks.forEach((link) => {
    link.addEventListener("click", () => {
      if (window.innerWidth <= 768) {
        nav.classList.remove("active");
      }
    });
  });

  // Add active class to current nav link
  const currentLocation = window.location.href;
  navLinks.forEach((link) => {
    if (link.href === currentLocation) {
      link.classList.add("active");
    }
  });

  // Simple form validation feedback
  const forms = document.querySelectorAll("form");
  forms.forEach((form) => {
    form.addEventListener("submit", function (event) {
      let isValid = true;
      const requiredInputs = form.querySelectorAll("[required]");

      requiredInputs.forEach((input) => {
        if (!input.value.trim()) {
          isValid = false;
          input.style.borderColor = "red";
          // You can add a message next to the input as well
        } else {
          input.style.borderColor = "#ccc";
        }
      });

      if (!isValid) {
        event.preventDefault();
        alert("Please fill out all required fields.");
      }
    });
  });

  // Add some interaction to recipe cards
  const recipeCards = document.querySelectorAll(".recipe-card");
  recipeCards.forEach((card) => {
    card.addEventListener("mouseenter", () => {
      // You can add more complex animations here
    });
    card.addEventListener("mouseleave", () => {
      // Clear animations
    });
  });
});
