import { Application } from "@hotwired/stimulus"

const application = Application.start()

// Configure Stimulus development experience
application.debug = false
window.Stimulus   = application

export { application }

document.addEventListener("DOMContentLoaded", () => {
  document.querySelectorAll(".ingredients-accordion .accordion-header")
    .forEach(header => {
      header.addEventListener("click", () => {
        header.parentElement.classList.toggle("open");
      });
    });
});
