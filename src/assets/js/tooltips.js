document.addEventListener("DOMContentLoaded", function () {
  let tooltipElement;

  document.body.addEventListener("mouseover", function (e) {
    const target = e.target.closest("[data-tooltip]");
    if (target) {
      const tooltipText = target.dataset.tooltip;
      if (tooltipText) {
        createTooltip(e.pageX, e.pageY, tooltipText);
      }
    }
  });

  document.body.addEventListener("mouseout", function (e) {
    const target = e.target.closest("[data-tooltip]");
    if (target && tooltipElement) {
      hideTooltip();
    }
  });

  document.body.addEventListener("mousemove", function (e) {
    if (tooltipElement) {
      positionTooltip(e.pageX, e.pageY);
    }
  });

  function createTooltip(x, y, text) {
    tooltipElement = document.createElement("div");
    tooltipElement.className = "tooltip";
    tooltipElement.textContent = text;
    document.body.appendChild(tooltipElement);
    positionTooltip(x, y);
  }

  function positionTooltip(x, y) {
    // Position the tooltip slightly offset from the cursor
    tooltipElement.style.left = `${x + 15}px`;
    tooltipElement.style.top = `${y + 15}px`;
  }

  function hideTooltip() {
    if (tooltipElement) {
      tooltipElement.remove();
      tooltipElement = null;
    }
  }
});

// Add CSS for the tooltips
const tooltipStyles = `
.tooltip {
    position: absolute;
    background-color: rgba(0, 0, 0, 0.8);
    color: #fff;
    padding: 5px 10px;
    border-radius: 4px;
    font-size: 12px;
    white-space: nowrap;
    z-index: 1100;
    pointer-events: none; /* So the tooltip doesn't interfere with mouse events */
}
`;

const styleSheet = document.createElement("style");
styleSheet.type = "text/css";
styleSheet.innerText = tooltipStyles;
document.head.appendChild(styleSheet);
