import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="show-booking"
export default class extends Controller {
  static targets = ["form", "requestbutton"]
  connect() {
    console.log("loaded")
  }

  showBooking() {
    // const booking = document.getElementById(`booking-${bookingId}`)
    this.formTarget.classList.toggle("hidden")
    this.requestbuttonTarget.classList.toggle("hidden")
    console.log("clicked")
  }
}
