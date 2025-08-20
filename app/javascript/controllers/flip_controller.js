import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = ["inner"]

  connect() {
    this.inner = this.element.querySelector(".event-card__inner")
  }

  toggle(event) {
    event.preventDefault()
    this.inner.classList.toggle("is-flipped")
  }
}
git 
