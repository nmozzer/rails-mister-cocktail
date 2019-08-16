import Typed from 'typed.js';

const loadDynamicBannerText = () => {
  new Typed('#banner-typed-text', {
    strings: ["Name it", "Mix it"],
    typeSpeed: 150,
    loop: true
  });
}

export { loadDynamicBannerText };
