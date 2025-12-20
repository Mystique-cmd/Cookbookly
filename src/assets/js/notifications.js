document.addEventListener("DOMContentLoaded", function () {
  // Function to show a notification
  window.showNotification = function (message, type = "info") {
    const container =
      document.getElementById("notification-container") ||
      createNotificationContainer();

    const notification = document.createElement("div");
    notification.className = `notification ${type}`;
    notification.textContent = message;

    container.appendChild(notification);

    // Show the notification
    setTimeout(() => {
      notification.classList.add("show");
    }, 10);

    // Hide and remove the notification after a few seconds
    setTimeout(() => {
      notification.classList.remove("show");
      notification.addEventListener("transitionend", () => {
        notification.remove();
        if (container.childElementCount === 0) {
          container.remove();
        }
      });
    }, 5000);
  };

  // Function to create the container for notifications if it doesn't exist
  function createNotificationContainer() {
    const container = document.createElement("div");
    container.id = "notification-container";
    document.body.appendChild(container);
    return container;
  }

  // Example of how to use it (you can call this from other scripts)
  // showNotification('Welcome to Grandma's Kitchen!', 'success');
  // showNotification('There was an error updating your profile.', 'error');
});

// Also need to add CSS for the notifications
const notificationStyles = `
#notification-container {
    position: fixed;
    top: 20px;
    right: 20px;
    z-index: 1050;
    width: 300px;
}

.notification {
    background-color: #fff;
    color: #333;
    padding: 15px 20px;
    border-radius: 5px;
    box-shadow: 0 5px 15px rgba(0,0,0,0.1);
    margin-bottom: 10px;
    opacity: 0;
    transform: translateX(100%);
    transition: all 0.5s cubic-bezier(0.68, -0.55, 0.27, 1.55);
}

.notification.show {
    opacity: 1;
    transform: translateX(0);
}

.notification.success {
    background-color: #d4edda;
    color: #155724;
    border-left: 5px solid #28a745;
}

.notification.error {
    background-color: #f8d7da;
    color: #721c24;
    border-left: 5px solid #dc3545;
}

.notification.info {
    background-color: #cce5ff;
    color: #004085;
    border-left: 5px solid #007bff;
}
`;

const styleSheet = document.createElement("style");
styleSheet.type = "text/css";
styleSheet.innerText = notificationStyles;
document.head.appendChild(styleSheet);
