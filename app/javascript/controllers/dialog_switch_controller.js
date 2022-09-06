import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="dialog-switch"
export default class extends Controller {
  static targets = ['firstDialog', 'secondDialog', 'thirdDialog']

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

}
