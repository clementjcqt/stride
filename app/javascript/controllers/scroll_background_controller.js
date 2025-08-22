import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  connect() {
    this.boundUpdate = this.updateGradient.bind(this)
    window.addEventListener("scroll", this.boundUpdate)
  }

  disconnect() {
    window.removeEventListener("scroll", this.boundUpdate)
  }

  updateGradient() {
    const scrollTop = window.scrollY
    const docHeight = document.body.scrollHeight - window.innerHeight
    const scrollPercent = docHeight ? scrollTop / docHeight : 0

    const topColor = [246, 228, 211]
    const baseBottom = [100, 80, 120]
    const endBottom = [20, 20, 40]

    const bottomColor = baseBottom.map((c, i) =>
      Math.round(c + (endBottom[i] - c) * scrollPercent)
    )

    const angle = 180 + scrollPercent * 60

    this.element.style.background = `linear-gradient(${angle}deg, rgb(${topColor.join(",")}) 0%, rgb(${bottomColor.join(",")}) 100%)`
  }
}
