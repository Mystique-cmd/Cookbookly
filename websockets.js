(function () {
  // Replace with your WebSocket server URL
  const WEBSOCKET_URL = "ws://localhost:8080";

  let socket;

  function connect() {
    socket = new WebSocket(WEBSOCKET_URL);

    socket.onopen = function (e) {
      console.log("[open] Connection established");
      // You might want to send an authentication token here
      // socket.send(JSON.stringify({ type: 'auth', token: 'your_jwt_token' }));
    };

    socket.onmessage = function (event) {
      console.log(`[message] Data received from server: ${event.data}`);
      const data = JSON.parse(event.data);

      // Handle different types of messages
      switch (data.type) {
        case "new_notification":
          if (window.showNotification) {
            window.showNotification(data.message, "info");
          }
          break;
        case "new_review":
          // Logic to dynamically add a review to the page
          console.log("A new review was posted:", data.review);
          break;
        // Add other cases as needed
      }
    };

    socket.onclose = function (event) {
      if (event.wasClean) {
        console.log(
          `[close] Connection closed cleanly, code=${event.code} reason=${event.reason}`,
        );
      } else {
        // e.g. server process killed or network down
        // event.code is usually 1006 in this case
        console.log("[close] Connection died");
        // Attempt to reconnect after a delay
        setTimeout(connect, 5000);
      }
    };

    socket.onerror = function (error) {
      console.log(`[error] ${error.message}`);
    };
  }

  // Only attempt to connect if the user is logged in
  if (document.body.classList.contains("logged-in")) {
    connect();
  }

  // Expose a function to send messages
  window.sendWebSocketMessage = function (message) {
    if (socket && socket.readyState === WebSocket.OPEN) {
      socket.send(JSON.stringify(message));
    } else {
      console.error("WebSocket is not connected.");
    }
  };
})();

// Example of sending a message from another script:
// window.sendWebSocketMessage({ type: 'chat', message: 'Hello everyone!' });
