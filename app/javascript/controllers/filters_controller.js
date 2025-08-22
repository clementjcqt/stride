import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = ["year", "country", "difficulty", "cards"]

  apply() {
    const year = this.yearTarget.value
    const country = this.countryTarget.value
    const difficulty = this.difficultyTarget.value

    // Parcourt toutes les cartes
    this.cardsTarget.querySelectorAll(".event-card-wrapper").forEach(card => {
      const matchYear = !year || card.dataset.year === year
      const matchCountry = !country || card.dataset.country === country
      const matchDifficulty = !difficulty || card.dataset.difficulty === difficulty

      if (matchYear && matchCountry && matchDifficulty) {
        card.style.display = "block"
      } else {
        card.style.display = "none"
      }
    })
  }
}
