function validateForm(form) {
  let isValid = true;
  const requiredInputs = form.querySelectorAll("[required]");

  requiredInputs.forEach((input) => {
    if (!input.value.trim()) {
      isValid = false;
      showError(input, "This field is required.");
    } else {
      hideError(input);
    }

    if (input.type === "email" && !validateEmail(input.value)) {
      isValid = false;
      showError(input, "Please enter a valid email address.");
    }

    if (input.type === "password" && input.value.length < 8) {
      isValid = false;
      showError(input, "Password must be at least 8 characters long.");
    }
  });

  return isValid;
}

function showError(input, message) {
  const formGroup = input.parentElement;
  const error =
    formGroup.querySelector(".error-message") || document.createElement("div");
  error.className = "error-message";
  error.textContent = message;
  formGroup.appendChild(error);
  input.style.borderColor = "red";
}

function hideError(input) {
  const formGroup = input.parentElement;
  const error = formGroup.querySelector(".error-message");
  if (error) {
    formGroup.removeChild(error);
  }
  input.style.borderColor = "#ccc";
}

function validateEmail(email) {
  const re =
    /^(([^<>()[\\]\\.,;:\s@\"]+(\.[^<>()[\\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\\.[0-9]{1,3}\\.[0-9]{1,3}\\.[0-9]{1,3}\])|(([a-zA-Z\\-0-9]+\\.)+[a-zA-Z]{2,}))$/;
  return re.test(String(email).toLowerCase());
}

document.addEventListener("DOMContentLoaded", function () {
  const forms = document.querySelectorAll("form");
  forms.forEach((form) => {
    form.addEventListener("submit", function (event) {
      if (!validateForm(this)) {
        event.preventDefault();
      }
    });
  });
});
