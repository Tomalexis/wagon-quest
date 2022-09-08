import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="dialog-switch"
export default class extends Controller {
  static targets = ['firstDialog', 'secondDialog', 'thirdDialog', 'continue']
  static values = {currentDialog: Number}

  connect(){
    // console.log(this.continueTargets)
    // console.log(this.currentDialogValue)

    // console.log(this.element.hidden)

    window.addEventListener('keydown', this.logKey.bind(this));
  }

  next(){
    this.firstDialogTarget.hidden = true
    this.secondDialogTarget.hidden = false
    this.thirdDialogTarget.hidden = true
  }

  next2(){
    this.firstDialogTarget.hidden = true
    this.secondDialogTarget.hidden = true
    this.thirdDialogTarget.hidden = false
  }

  logKey(e) {
    // console.log(e.code)

    // console.log(this.element.hidden)

    if (e.code == "Space" && this.element.hidden == false) {
      // console.log('continue')
      // console.log(this.continueTargets[this.currentDialogValue - 1])
      const continueButton = this.continueTargets[this.currentDialogValue - 1]
      continueButton.click()
      this.currentDialogValue += 1
    }
  }
}
