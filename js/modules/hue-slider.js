export function hueSlider() {
   
    //VARIABLES
    const slider = document.querySelector('.dot-hue-slider input');
    const root = document.querySelector(':root');
    const sliderContainer = document.querySelector('.dot-hue-slider');
    const savedHue = localStorage.getItem('dynamicHue');

    if (slider) {

      slider.value = savedHue;
      
      //Updates the CSS variable with the hue
      let hue = savedHue;
      root.style.setProperty('--dynamic-hue', hue);

      //EVENT LISTENERS 
      slider.addEventListener('input', () => {
        let hue = slider.value;
        
        localStorage.setItem('dynamicHue', hue);
        root.style.setProperty('--dynamic-hue', hue);
      })

      //Click for mobile and tablet
      sliderContainer.addEventListener('click', () => {
        if (window.innerWidth < 1200) {
        sliderContainer.classList.toggle('expanded');
        slider.disabled = false;
        }
      });

      //Hover for desktop
      sliderContainer.addEventListener('mouseenter', () => {
        slider.disabled = false;
      });
    }
}