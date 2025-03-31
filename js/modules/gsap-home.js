export function gsapHome() {

    //VARIABLES
    const lineSeperator = document.querySelector('#line-seperator');
    const welcome = document.querySelector('#welcome');
    const projectHeader = document.querySelector('#project-header');
    const projectCards = document.querySelectorAll('.project-card');

    const animationDuration = 1;
    const animationEase = 'power2.out';

    gsap.from(welcome, {
    duration: animationDuration,
    y: 50,
    opacity: 0,
    ease: animationEase,
    });

    gsap.from(lineSeperator, {
        duration: animationDuration,
        y: 50,
        opacity: 0,
        ease: animationEase,
    });

    gsap.set(projectHeader, {
        opacity: 0,
        y: 25
    });
    
    gsap.to(projectHeader, {
        scrollTrigger: {
            trigger: projectHeader,
            start: "top center",
            end: "+=100",
            toggleActions: "play none none reverse",
            scrub: 1
        },
        y: 0,
        opacity: 1,
        ease: animationEase
    });

    projectCards.forEach(card => {
    gsap.from(card, {
        scrollTrigger: {
        trigger: card,
        start: "top 90%",
        end: "bottom 90%",
        toggleActions: "play none none reverse",
        scrub: 1,
        },
        duration: animationDuration,
        y: 50,
        opacity: 0,
        ease: animationEase
    });
    });
}