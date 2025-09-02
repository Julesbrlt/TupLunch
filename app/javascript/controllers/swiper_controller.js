import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = ["wrapper"]

  connect() {
    this.swiper = new Swiper(this.element, {
      effect: "cards",
      allowSlidePrev: false,
    })
  }

  pass() {
    this.swiper.slideNext()
  }

  add(event) {
  event.preventDefault();
  const url = event.currentTarget.dataset.url
  const token = document.querySelector('meta[name="csrf-token"]').content
  fetch(url, {
    method: "POST",
    headers: {
      "X-CSRF-Token": token,
      "Accept": "text/vnd.turbo-stream.html, text/html, application/json"
    },
    credentials: "same-origin"
  })
  this.swiper.slideNext()
  }
}

// swiper.allowSlideNext
// swiper.allowSlidePrev
// swiper.allowTouchMove Disable / enable ability move slider by grabbing it with mouse or by touching it with finger (on touch screens) by assigning false / true to this property
// swiper.clickedSlide Link to last clicked slide (HTMLElement)
// click	(swiper, event) Event will be fired when user click/tap on Swiper. Receives pointerup event as an arguments.
// sliderMove	(swiper, event) Event will be fired when user touch and move finger over Swiper and move it. Receives pointermove event as an arguments.
