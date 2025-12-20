(function () {
  let idleTimer = null;
  let idleState = false;
  let idleTimeout = 300000; // 5 minutes

  const startTimer = () => {
    idleTimer = setTimeout(showIdleWarning, idleTimeout);
    idleState = false;
  };

  const resetTimer = () => {
    clearTimeout(idleTimer);
    startTimer();
  };

  const showIdleWarning = () => {
    idleState = true;
    // You could show a modal here to warn the user
    if (window.showNotification) {
      window.showNotification(
        "You have been idle for a while. You will be logged out soon.",
        "info",
      );
    } else {
      console.log("User is idle. Show session timeout warning.");
    }
    // Start a second timer to actually log them out
    setTimeout(() => {
      if (idleState) {
        // Redirect to logout page
        window.location.href = "/logout.php";
      }
    }, 60000); // 1 minute after warning
  };

  const setupTimers = () => {
    window.addEventListener("mousemove", resetTimer, false);
    window.addEventListener("mousedown", resetTimer, false);
    window.addEventListener("keypress", resetTimer, false);
    window.addEventListener("DOMMouseScroll", resetTimer, false);
    window.addEventListener("mousewheel", resetTimer, false);
    window.addEventListener("touchmove", resetTimer, false);
    window.addEventListener("MSPointerMove", resetTimer, false);

    startTimer();
  };

  // Only run this logic if the user is logged in
  // This is a simple check; a more robust solution would be to check a session cookie or a global JS variable
  if (document.body.classList.contains("logged-in")) {
    setupTimers();
  }
})();
