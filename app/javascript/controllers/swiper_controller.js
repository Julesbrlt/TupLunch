import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = ["wrapper"]

  connect() {
    this.swiper = new Swiper(this.element, {
      effect: "cards",
      allowSlidePrev: true,
/*       watchSlidesProgress: true,
 */      // grabCursor: true,
      on: {
        touchEnd: (swiper) => this.onTouchEnd(swiper)
      }
    })
  }

  pass() {
    // this.swiper.slideNext()
  }

  add(eventOrUrl) {
    let url

    if (eventOrUrl?.preventDefault) {
      eventOrUrl.preventDefault()
      url = eventOrUrl.currentTarget.dataset.url
    }
    else {
      url = eventOrUrl
    }

    const token = document.querySelector('meta[name="csrf-token"]').content
    fetch(url, {
      method: "POST",
      headers: {
        "X-CSRF-Token": token,
        "Accept": "text/vnd.turbo-stream.html, text/html, application/json"
      },
      credentials: "same-origin"
    })

    // this.swiper.slideNext()
  }

  // --- Swipe tactile ---
  onTouchEnd(swiper) {
    /* debugger */
    const dx = swiper.touches.diff || 0
    const threshold = 200 // px minimum
    console.log({dx, threshold})
    const activeIndex =  swiper.activeIndex
    if (dx > threshold) {
      // 👉 swipe droite = add
      const active = this._activeSlide()
      const url = active?.querySelector(".btn-swipe")?.dataset.url
        swiper.removeSlide(activeIndex);
        swiper.update();
      if (url) this.add(url)

    } else if (dx < -threshold) {
      // 👉 swipe gauche = pass
      swiper.removeSlide(activeIndex);
      swiper.update();
      this.pass()

    } else {
      // trop court → revient au centre
      swiper.slideTo(activeIndex, 200)
    }
  }

  // helper
  _activeSlide() {
    return this.element.querySelector(".swiper-slide-active")
  }
}
