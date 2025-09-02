import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="chat-line"
export default class extends Controller {
  connect() {
    this.element.scrollIntoView()
  }
}
