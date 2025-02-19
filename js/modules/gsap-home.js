export function gsapHome() {

    //VARIABLES
    const warningIntro = document.querySelector('#warning-intro');
    const lineSeperator = document.querySelector('#line-seperator');
    const welcome = document.querySelector('#welcome');
    const video = document.querySelector('#video-con');
    const projectHeader = document.querySelector('#project-header');
    const projectCards = document.querySelectorAll('.project-card');

    const animationDuration = 1;
    const animationEase = 'power2.out';
    const animationOffset = '-=0.4';

    const tl = gsap.timeline();

    //Initial Animations
    tl.from(warningIntro, {
    duration: animationDuration,
    y: 200,
    opacity: 0,
    ease: animationEase
    }, animationOffset)
    .from(lineSeperator, {
    duration: animationDuration,
    y: 50,
    opacity: 0,
    ease: animationEase
    }, animationOffset)
    .from(welcome, {
    duration: animationDuration,
    y: 50,
    opacity: 0,
    ease: animationEase
    }, animationOffset)

    gsap.from(video, {
    scrollTrigger: {
        trigger: video,
        start: "top 90%",
        end: "bottom 75%",
        toggleActions: "play none none reverse",
        scrub: 0.1,
    },
    duration: animationDuration,
    y: 50,
    opacity: 0,
    ease: animationEase
    });

    //Scroll Trigger Animations
    gsap.from(projectHeader, {
    scrollTrigger: {
        trigger: projectHeader,
        start: "top 90%",
        end: "bottom 75%",
        toggleActions: "play none none reverse",
        scrub: 0.1,
    },
    duration: animationDuration,
    y: 50,
    opacity: 0,
    ease: animationEase
    });

    projectCards.forEach(card => {
    gsap.from(card, {
        scrollTrigger: {
        trigger: card,
        start: "top 90%",
        end: "bottom 75%",
        toggleActions: "play none none reverse",
        scrub: 0.1,
        },
        duration: animationDuration,
        y: 50,
        opacity: 0,
        ease: animationEase
    });
    });
}