import { Controller } from '@hotwired/stimulus';

export default class extends Controller {
  connect() {

    this.swiper = new Swiper('.swiper-container', {
      direction: 'horizontal',
      loop: true,

      pagination: {
        el: ".swiper-pagination",
      },
      navigation: {
        nextEl: ".swiper-button-next",
        prevEl: ".swiper-button-prev",
      },
    });
    this.swiper.slideNext();
  }
}
