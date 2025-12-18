document.addEventListener("DOMContentLoaded", function () {
  const darkModeToggle = document.getElementById("dark-mode-toggle");
  const body = document.body;

  // Check for saved user preference
  if (localStorage.getItem("darkMode") === "enabled") {
    enableDarkMode();
  }

  if (darkModeToggle) {
    darkModeToggle.addEventListener("click", () => {
      if (body.classList.contains("dark-mode")) {
        disableDarkMode();
      } else {
        enableDarkMode();
      }
    });
  }

  function enableDarkMode() {
    body.classList.add("dark-mode");
    localStorage.setItem("darkMode", "enabled");
    if (darkModeToggle) darkModeToggle.textContent = "Light Mode";
  }

  function disableDarkMode() {
    body.classList.remove("dark-mode");
    localStorage.setItem("darkMode", "disabled");
    if (darkModeToggle) darkModeToggle.textContent = "Dark Mode";
  }
});

// Add CSS for the dark mode theme
const darkModeStyles = `
body.dark-mode {
    background-color: #1a1a1a;
    color: #eee;
}

body.dark-mode header,
body.dark-mode .sidebar,
body.dark-mode .profile-content,
body.dark-mode .dashboard-section,
body.dark-mode .form-container,
body.dark-mode .recipe-card,
body.dark-mode .login-container {
    background-color: #2b2b2b;
    color: #eee;
    box-shadow: 0 4px 15px rgba(0,0,0,0.5);
}

body.dark-mode .logo {
    color: #00e6a8;
}

body.dark-mode nav ul li a {
    color: #ccc;
}

body.dark-mode nav ul li a:hover,
body.dark-mode nav ul li a.active {
    color: #ff4da6;
}

body.dark-mode .content-table tbody tr:nth-of-type(even) {
    background-color: #333;
}

body.dark-mode .content-table tbody tr {
    border-bottom: 1px solid #444;
}

body.dark-mode .form-group input,
body.dark-mode .form-group textarea,
body.dark-mode .form-group select {
    background-color: #333;
    color: #eee;
    border-color: #555;
}

body.dark-mode .recipe-card-content h3,
body.dark-mode .main-content h1,
body.dark-mode .dashboard-section h2 {
    color: #eee;
}

body.dark-mode .stat-card {
    background-color: #2b2b2b;
}
`;

const styleSheet = document.createElement("style");
styleSheet.type = "text/css";
styleSheet.innerText = darkModeStyles;
document.head.appendChild(styleSheet);
