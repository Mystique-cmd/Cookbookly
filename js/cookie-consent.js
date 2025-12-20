document.addEventListener("DOMContentLoaded", function () {
  const COOKIE_NAME = "grandmas_kitchen_cookie_consent";
  const cookieBanner = document.getElementById("cookie-consent-banner");
  const acceptButton = document.getElementById("cookie-accept-btn");

  // Check if the user has already consented
  if (!getCookie(COOKIE_NAME)) {
    if (cookieBanner) {
      cookieBanner.style.display = "block";
    }
  }

  if (acceptButton) {
    acceptButton.addEventListener("click", function () {
      setCookie(COOKIE_NAME, "true", 365);
      if (cookieBanner) {
        cookieBanner.style.display = "none";
      }
    });
  }

  function setCookie(name, value, days) {
    let expires = "";
    if (days) {
      const date = new Date();
      date.setTime(date.getTime() + days * 24 * 60 * 60 * 1000);
      expires = "; expires=" + date.toUTCString();
    }
    document.cookie = name + "=" + (value || "") + expires + "; path=/";
  }

  function getCookie(name) {
    const nameEQ = name + "=";
    const ca = document.cookie.split(";");
    for (let i = 0; i < ca.length; i++) {
      let c = ca[i];
      while (c.charAt(0) == " ") c = c.substring(1, c.length);
      if (c.indexOf(nameEQ) == 0) return c.substring(nameEQ.length, c.length);
    }
    return null;
  }
});

// Add the banner HTML to the body (or include it in your footer.php)
const bannerHTML = `
<div id="cookie-consent-banner" style="display: none;">
    <p>We use cookies to improve your experience. By continuing to browse, you agree to our use of cookies.</p>
    <button id="cookie-accept-btn" class="btn btn-primary">Accept</button>
</div>
`;
// A simple way to add it, though including it in the PHP is better for performance.
document.body.insertAdjacentHTML("beforeend", bannerHTML);

// Add CSS for the cookie consent banner
const cookieConsentStyles = `
#cookie-consent-banner {
    position: fixed;
    bottom: 0;
    left: 0;
    width: 100%;
    background-color: #2b2b2b;
    color: #eee;
    padding: 15px;
    text-align: center;
    z-index: 1070;
    display: flex;
    justify-content: center;
    align-items: center;
}

#cookie-consent-banner p {
    margin: 0 15px 0 0;
}
`;

const styleSheet = document.createElement("style");
styleSheet.type = "text/css";
styleSheet.innerText = cookieConsentStyles;
document.head.appendChild(styleSheet);
