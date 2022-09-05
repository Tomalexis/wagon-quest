import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="music"
export default class extends Controller {
  static targets = ['audio', 'pauseButton', 'playButton']

  play() {
    this.audioTarget.play()
    this.playButtonTarget.hidden = true
    this.pauseButtonTarget.hidden = false
  }

  pause() {
    this.audioTarget.pause()
    this.pauseButtonTarget.hidden = true
    this.playButtonTarget.hidden = false
  }
}
