import { Application } from "@hotwired/stimulus"
import FlipController from "./controllers/flip_controller"

const application = Application.start()
application.register("flip", FlipController)

// Optional: debug
application.debug = true
window.Stimulus = application

document.addEventListener("DOMContentLoaded", () => {
  console.log("Stride JS prêt")
})
