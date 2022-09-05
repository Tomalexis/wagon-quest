import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="map"
export default class extends Controller {
  static targets = ['user', 'obstacle']
  static values = {
    userPositionX: Number,
    userPositionY: Number,
    mapPositionXMin: Number,
    mapPositionXMax: Number,
    mapPositionYMin: Number,
    mapPositionYMax: Number,
  }

  connect() {
    console.log('connected')
    console.log(this.userTarget)
    console.log(this.userPositionXValue)
    console.log(this.userPositionYValue)
    console.log(this.obstacleTargets)

    window.addEventListener('keydown', this.logKey.bind(this));
  }
  logKey(e) {
    console.log(e.code)
    let newPositionX = this.userPositionXValue
    let newPositionY = this.userPositionYValue

    if (e.code == "ArrowLeft") {
      console.log('move to the left')
      if (this.userPositionXValue > this.mapPositionXMinValue){
        newPositionX = this.userPositionXValue - 1
      }
    } else if (e.code == "ArrowRight") {
      console.log('move to the right')
      if (this.userPositionXValue < this.mapPositionXMaxValue){
        newPositionX = this.userPositionXValue + 1
      }
    } else if (e.code == "ArrowUp") {
      console.log('move up')
      if (this.userPositionYValue > this.mapPositionYMinValue){
        newPositionY = this.userPositionYValue - 1
      }
    } else if (e.code == "ArrowDown") {
      console.log('move down')
      if (this.userPositionYValue < this.mapPositionYMaxValue){
        newPositionY = this.userPositionYValue + 1
      }
    }

    const tileId = `${newPositionX}-${newPositionY}`
    const tile = document.getElementById(tileId)

    if (!this.obstacleTargets.includes(tile)) {
      this.userPositionXValue = newPositionX
      this.userPositionYValue = newPositionY

      tile.appendChild(this.userTarget);
    }
  }
}
