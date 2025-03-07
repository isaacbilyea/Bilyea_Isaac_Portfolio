export function logoHover() {

    //VARIABLES
    const logoContainer = document.querySelector(".logo-container");
    const initials = document.querySelector("#b-initial path");
    const fullNameLetters = [...document.querySelectorAll("#full-name path")];
    
    let tl = gsap.timeline({paused: true});

    tl.to(initials, { 
      opacity: 0, 
      duration: 0,
    })
    .to(fullNameLetters, {
      opacity: 1,
      stagger: 0.02,
      duration: 0.02,
    });

    //FUNCTIONS
    function typeFullName() {
      tl.play();
    }

    function untypeFullName() {
      tl.reverse();
    }

    //EVENT LISTENERS
    if(window.innerWidth >= 1200) {
    logoContainer.addEventListener("mouseenter", typeFullName);
    logoContainer.addEventListener("mouseleave", untypeFullName);
    }

}