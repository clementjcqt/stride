import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  connect() {
    const title = this.element;
    title.innerHTML = title.textContent
      .split("")
      .map(char => `<span>${char}</span>`)
      .join("");
  }
}
