import { Controller } from "@hotwired/stimulus"
import Typed from "typed.js"
export default class extends Controller {
  connect() {
    new Typed(this.element, {
      strings: ["I am looking for a 12 month apprenticeship in Nice or Full remote"],
      typeSpeed: 50,
      loop: true
    })
  }
}
