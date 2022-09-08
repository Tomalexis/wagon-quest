import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="music-in-battle"
export default class extends Controller {
  static targets = ["continueLink", "answerLink", "form", "appear"]
  static values = {battleStatus: String}

  connect() {
    this.csrf = document.querySelector('[name="csrf-token"]').content
    // console.log("Is this thing on?")
    // console.log(this.battleStatusValue)
    // console.log(this.continueLinkTarget)
    // console.log(this.continueLinkTarget.href)
    setTimeout(() => {
      this.appearTarget.hidden = false
    }, 1000);
    window.addEventListener('keydown', this.logKey.bind(this));
  }

  logKey(e) {
    // console.log(e.code)

    // console.log(this.element.hidden)

    if (e.code == "Space") {
      // console.log('continue')
      // console.log(this.continueTargets[this.currentDialogValue - 1])
      if(this.battleStatusValue == 'battle_outro') {
        this.continueLinkTarget.click()
      } else if(this.battleStatusValue != 'round_core') {
        const event = new Event('click');

        this.continueLinkTarget.dispatchEvent(event);
      }

    }
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

  secretBoss(event) {
    event.preventDefault()
    // console.log("Continue?")
    fetch(this.formTarget.action, {
      method: "POST",
      headers: { "Accept": "application/json", "X-CSRF-TOKEN": this.csrf },
      body: new FormData(this.formTarget)
    })
      .then(response => response.json())
      .then((data) => {
        // console.log(data)
        this.element.outerHTML = data.battle
      })
  }
}
