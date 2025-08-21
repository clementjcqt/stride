// application.js — Stimulus Importmap-friendly
import { Application } from "@hotwired/stimulus"
import FlipController from "./flip_controller"
// Démarrer Stimulus
const application = Application.start()
application.register("flip", FlipController)
// Optional: debug
application.debug = false
window.Stimulus = application
document.addEventListener("DOMContentLoaded", () => {
  console.log("Stride JS prêt")
})
export { application }
