import { Controller } from "@hotwired/stimulus"
import Typed from "typed.js";


// Connects to data-controller="typed-js"
export default class extends Controller {
  connect() {
    console.log('hello from typed');
    new Typed(this.element, {
      strings:["Running low?", "Need a charge?", "We've got you...."],
      typeSpeed: 65,
      loop: true
    })
  }
}
