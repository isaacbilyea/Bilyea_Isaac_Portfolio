export function introBall() {
  gsap.registerPlugin(ScrollTrigger);

  //VARIABLES
  const scrollBall = document.querySelector("#seperator-ball");
  const welcomeSpans = document.querySelectorAll("#welcome span");
  const root = document.documentElement;

  //FUNCTIONS
  function changeTextColour() {

    const yPercent = gsap.getProperty(scrollBall, "yPercent");
    
    if (yPercent <= 100) {
      welcomeSpans[0].style.color = "var(--dot-color)";
      welcomeSpans[1].style.color = "#2D2D2D";
      root.style.setProperty('--current-color', 'var(--dot-color)');
    } else if (yPercent >= 900) {
      welcomeSpans[0].style.color = "#2D2D2D";
      welcomeSpans[1].style.color = "var(--dot-color)";
      root.style.setProperty('--current-color', '#2D2D2D');
    }
  }

  gsap.to(scrollBall, {
    yPercent: 1000,
    duration: 2,
    repeat: -1,
    yoyo: true,
    onUpdate: changeTextColour,
    ease: "bounce.out"
  });
}