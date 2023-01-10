import { Controller } from "@hotwired/stimulus"
import Typed from "typed.js"

export default class extends Controller {
  connect() {
    new Typed(this.element, {
      strings: [" Je suis à la recherche d'une alternance de 12 mois à Nice ou Full remote"],
      typeSpeed: 50,
      loop: true
    })
  }
}
