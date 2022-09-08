import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="transition"
export default class extends Controller {
  static targets = ['circling']

  connect() {
    this.circlingTarget.classList.add("loaded")
  }
}
