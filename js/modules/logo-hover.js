export function logoHover() {
    const logoContainer = document.querySelector(".logo-container");
    const initials = document.querySelector("#b-initial path");
    const fullNameLetters = [...document.querySelectorAll("#full-name path")];
    
    let tl = gsap.timeline({ paused: true });

    gsap.set(fullNameLetters, { opacity: 0 });
    gsap.set(initials, { opacity: 1 });
    
    tl.to(initials, { 
        opacity: 0,
        duration: 0.05 
    })
    .to(fullNameLetters, {
        opacity: 1,
        duration: 0.10, 
        stagger: {
            amount: 0.1, 
            from: "start"
        },
        scrambleText: {
            chars: "lowerCase",
            speed: 0.10, 
            text: "{original}"
        }
    });

    if(window.innerWidth >= 1200) {
        logoContainer.addEventListener("mouseenter", () => tl.play());
        logoContainer.addEventListener("mouseleave", () => tl.reverse());
    }
}