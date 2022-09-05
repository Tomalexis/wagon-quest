import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="map"
export default class extends Controller {
  static targets = ['user']
  static values = {
    userPositionX: Number,
    userPositionY: Number,
    mapPositionXMin: Number,
    mapPositionXMax: Number,
    mapPositionYMin: Number,
    mapPositionYMax: Number
  }

  connect() {
    console.log('connected')
    console.log(this.userTarget)
    console.log(this.userPositionXValue)
    console.log(this.userPositionYValue)
    console.log(this.mapPositionXMinValue)
    console.log(this.mapPositionXMaxValue)
    console.log(this.mapPositionYMinValue)
    console.log(this.mapPositionYMaxValue)

    window.addEventListener('keydown', this.logKey.bind(this));
  }
  logKey(e) {
    console.log(e.code)
    if (e.code == "ArrowLeft") {
      console.log('move to the left')
      if (this.userPositionXValue > this.mapPositionXMinValue){
        this.userPositionXValue -= 1
      }
    } else if (e.code == "ArrowRight") {
      console.log('move to the right')
      if (this.userPositionXValue < this.mapPositionXMaxValue){
        this.userPositionXValue += 1
      }
    } else if (e.code == "ArrowUp") {
      console.log('move up')
      if (this.userPositionYValue > this.mapPositionYMinValue){
        this.userPositionYValue -= 1
      }
    } else if (e.code == "ArrowDown") {
      console.log('move down')
      if (this.userPositionYValue < this.mapPositionYMaxValue){
        this.userPositionYValue += 1
      }
    }
    const tileId = `${this.userPositionXValue}-${this.userPositionYValue}`
    const tile = document.getElementById(tileId)
    tile.appendChild(this.userTarget);
  }
}
