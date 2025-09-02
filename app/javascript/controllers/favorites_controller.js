import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = ["card", "button"]

  connect() {
    this.showingAll = false
    this.updateView()
  }

  toggle() {
    this.showingAll = !this.showingAll
    this.updateView()
  }

  updateView() {
    if (this.showingAll) {
      // Affiche toutes les cards
      this.cardTargets.forEach(card => card.classList.remove("hidden"))
      this.buttonTarget.textContent = "Voir moins"
    } else {
      // Affiche seulement les 2 premières
      this.cardTargets.forEach((card, index) => {
        if (index > 1) {
          card.classList.add("hidden")
        } else {
          card.classList.remove("hidden")
        }
      })
      this.buttonTarget.textContent = "Voir plus"
    }
  }
}
