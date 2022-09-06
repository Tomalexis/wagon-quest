import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="map"
export default class extends Controller {
  static targets = ['user', 'obstacle', 'userFace', 'userBack', 'userRight', 'userLeft']
  static values = {
    userPositionX: Number,
    userPositionY: Number,
    mapPositionXMin: Number,
    mapPositionXMax: Number,
    mapPositionYMin: Number,
    mapPositionYMax: Number,
  }

  connect() {
    // console.log('connected')
    // console.log(this.userTarget)
    // console.log(this.userPositionXValue)
    // console.log(this.userPositionYValue)
    // console.log(this.obstacleTargets)
    console.log(this.userFaceTarget)
    console.log(this.userBackTarget)

    window.addEventListener('keydown', this.logKey.bind(this));
  }
  logKey(e) {
    console.log(e.code)
    let newPositionX = this.userPositionXValue
    let newPositionY = this.userPositionYValue

    if (e.code == "ArrowLeft" || e.code == "KeyA") {
      // console.log('move to the left')
      if (this.userPositionXValue > this.mapPositionXMinValue){
        newPositionX = this.userPositionXValue - 1
        this.userBackTarget.classList.add("d-none")
        this.userFaceTarget.classList.add("d-none")
        this.userRightTarget.classList.add("d-none")
        this.userLeftTarget.classList.remove("d-none")
      }
    } else if (e.code == "ArrowRight" || e.code == "KeyD" ) {
      // console.log('move to the right')
      if (this.userPositionXValue < this.mapPositionXMaxValue){
        newPositionX = this.userPositionXValue + 1
        this.userBackTarget.classList.add("d-none")
        this.userFaceTarget.classList.add("d-none")
        this.userLeftTarget.classList.add("d-none")
        this.userRightTarget.classList.remove("d-none")
      }
    } else if (e.code == "ArrowUp" || e.code == "KeyW") {
      // console.log('move up')
      if (this.userPositionYValue > this.mapPositionYMinValue){
        newPositionY = this.userPositionYValue - 1
        this.userFaceTarget.classList.add("d-none")
        this.userLeftTarget.classList.add("d-none")
        this.userRightTarget.classList.add("d-none")
        this.userBackTarget.classList.remove("d-none")
      }
    } else if (e.code == "ArrowDown" || e.code == "KeyS") {
      // console.log('move down')
      if (this.userPositionYValue < this.mapPositionYMaxValue){
        newPositionY = this.userPositionYValue + 1
        this.userBackTarget.classList.add("d-none")
        this.userLeftTarget.classList.add("d-none")
        this.userRightTarget.classList.add("d-none")
        this.userFaceTarget.classList.remove("d-none")
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
