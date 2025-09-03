import { Controller } from "@hotwired/stimulus"

// data-controller="recipe-count"
export default class extends Controller {
  static targets = ["value"]
  static values = { min: { type: Number, default: 1 } }

  increment() {
    this.set(this.current + 1)
  }

  decrement() {
    this.set(Math.max(this.minValue, this.current - 1))
  }

  // --- helpers ---
  get current() {
    return parseInt(this.valueTarget.textContent, 10) || 0
  }

  set(n) {
    this.valueTarget.textContent = n
  }
}
