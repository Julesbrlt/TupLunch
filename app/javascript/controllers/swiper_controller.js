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
        touchEnd: (swiper, event) => this.onTouchEnd(swiper, event)
      }
    })
  }

  pass() {
    this.swiper.slideNext()
  }

  async add(eventOrUrl) {
    console.log('add')
    let url

    if (eventOrUrl?.preventDefault) {
      eventOrUrl.preventDefault()
      url = eventOrUrl.currentTarget.dataset.url
    }
    else {
      url = eventOrUrl
    }

    const token = document.querySelector('meta[name="csrf-token"]').content
    const response = await fetch(url, {
      method: "POST",
      headers: {
        "X-CSRF-Token": token,
        "Accept": "text/vnd.turbo-stream.html, text/html, application/json"
      },
      credentials: "same-origin"
    })

    if (response.ok) {
    const data = await response.json().catch(() => ({}))
    if (data.redirect_url) {
      window.location.href = data.redirect_url
      return
    }
  }

    this.swiper.slideNext()
  }

  // --- Swipe tactile ---
  onTouchEnd(swiper, event) {
     /* debugger */
    console.log('event', event)

    if (event.target.closest('[data-action]') || event.target.tagName === "BUTTON" || event.target.closest('[href]') || event.target.tagName === "A") {
      console.log('dans le early return')
      return
    }


    const dx = swiper.touches.diff || 0
    console.log('swiper', swiper)

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
