export function introBall() {
  gsap.registerPlugin(ScrollTrigger);

  //VARIABLES
  const scrollBall = document.querySelector("#seperator-ball");
  const welcomeSpans = document.querySelectorAll("#welcome span");
  const root = document.documentElement;

  //FUNCTIONS
  function changeTextColour() {
    const progress = this.progress();
    
    if (progress <= 0.05) {
      welcomeSpans[0].style.color = "var(--dot-color)";
      welcomeSpans[1].style.color = "#2D2D2D";
      root.style.setProperty('--current-color', 'var(--dot-color)');
    } else if (progress >= 0.95) {
      welcomeSpans[0].style.color = "#2D2D2D";
      welcomeSpans[1].style.color = "var(--dot-color)";
      root.style.setProperty('--current-color', '#2D2D2D');
    }
  }

  gsap.to(scrollBall, {
      top: "100%", 
      ease: "linear",
      duration: 0.1,
      onUpdate: changeTextColour,
      scrollTrigger: {
        trigger: "#line-seperator",
        start: "top 40%",
        end: "bottom 50%",
        scrub: 1,
      },
  });
}