import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="music-in-battle"
export default class extends Controller {
  static targets = ["continueLink", "answerLink"]

  connect() {
    this.csrf = document.querySelector('[name="csrf-token"]').content
    // console.log("Is this thing on?")
    // console.log(this.continueLinkTarget)
    // console.log(this.continueLinkTarget.href)
  }

  continue(event) {
    event.preventDefault()
    // console.log("Continue?")
    fetch(this.continueLinkTarget.href, {
      method: "PATCH",
      headers: { "Accept": "application/json", "X-CSRF-TOKEN": this.csrf }
    })
      .then(response => response.json())
      .then((data) => {
        // console.log(data)
        this.element.outerHTML = data.battle
      })
  }

  answer(event) {
    event.preventDefault()
    // console.log("Continue?")
    const answerClickedLink = this.answerLinkTargets.find(link => link == event.currentTarget);
    fetch(answerClickedLink.href, {
      method: "POST",
      headers: { "Accept": "application/json", "X-CSRF-TOKEN": this.csrf }
    })
      .then(response => response.json())
      .then((data) => {
        // console.log(data)
        this.element.outerHTML = data.battle
      })
  }
}
