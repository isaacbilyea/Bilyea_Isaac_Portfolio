export function logoHover() {

    //VARIABLES
    const logoContainer = document.querySelector(".logo-container");
    const initials = document.querySelector("#b-initial path");
    //Puts paths in an array for reverse method
    const fullNameLetters = [...document.querySelectorAll("#full-name path")];
  
    //FUNCTIONS
  
    function typeFullName() {
  
      gsap.to(initials, { opacity: 0, duration: 0.015 });
  
      gsap.to(fullNameLetters, {
        opacity: 1,
        stagger: 0.025, 
        duration: 0.015,
        ease: "power1.inOut",
      });
    }
  
    function untypeFullName() {
  
      gsap.killTweensOf(fullNameLetters);
  
      gsap.to(fullNameLetters.reverse(), {
        opacity: 0,
        stagger: 0.025,
        duration: 0.015,
        ease: "power1.inOut",
        onComplete: () => {
          fullNameLetters.reverse();
          gsap.to(initials, { opacity: 1, duration: 0.015 });
        },
      });
    }
  
    //EVENT LISTENERS
  
    if(window.innerWidth >= 1200) {
      logoContainer.addEventListener("mouseenter", typeFullName);
      logoContainer.addEventListener("mouseleave", untypeFullName);
    }
}
  