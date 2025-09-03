import { Controller } from "@hotwired/stimulus"

// data-controller="update-favorites"
export default class extends Controller {
  static targets = ["icon"]
  static values = {
    redUrl: String,
    whiteUrl: String,
  }

  // Ne bloque PAS la requête réseau : on ne fait pas preventDefault
  toRed() {
    if (!this.hasIconTarget) return
    this.iconTarget.src = this.redUrlValue || this.iconTarget.src
    this.iconTarget.alt = "Ajouté aux favoris"
    this.element.classList.add("is-favorited")
  }
}
