import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = ["dot_0", "dot_1", "dot_2", "dot_3", "dot_4", "dot_5", "dot_6", "dot_7", "dot_8", "dot_9", "dot_10"]

  connect() {
    this.current = 0
  }

  next(e) {
    e.preventDefault();
    const recipe_index = e.currentTarget.querySelector('#recipe_index').value
    console.log(recipe_index)
    const dot = this[`dot_${recipe_index}Target`]
    console.log(dot)
    dot.classList.add("active")
  }
}
