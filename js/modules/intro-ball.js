export function introBall() {
    
    gsap.registerPlugin(ScrollTrigger);

    //VARIABLES
    const scrollBall = document.querySelector("#seperator-ball");
    const welcomeSpans = document.querySelectorAll("#welcome span");
  
    if(welcomeSpans.length > 0) {
    //FUNCTIONS
    function changeTextColour() {
      const progress = this.progress();
  
      //Swaps colours of welcome text based on balls progress
      if (progress === 0) {
        //top = 0%
        welcomeSpans[0].style.color = "var(--dot-color)";
        welcomeSpans[1].style.color = "#2D2D2D";
      } else if (progress === 1) {
        //top = 100%
        welcomeSpans[0].style.color = "#2D2D2D";
        welcomeSpans[1].style.color = "var(--dot-color)";
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
          scrub: true,
        },
      });
    }
}