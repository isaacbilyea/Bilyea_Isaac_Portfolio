export function gsapAbout() {
    
    //VARIABLES
    const aboutMeImage = document.querySelector('#about-me-image');
    const aboutMeText = document.querySelector('#about-me-text');
    const aboutMeContact = document.querySelector('#about-me-contact');

    const animationDuration = 1;
    const animationEase = 'power2.out';
    const animationOffset = '-=0.4';

    const tl = gsap.timeline();

    tl.from(aboutMeImage, {
    duration: animationDuration,
    y: 300,
    opacity: 0,
    ease: animationEase
    }, animationOffset)
    .from(aboutMeText, {
    duration: animationDuration,
    y: 50,
    opacity: 0,
    ease: animationEase
    }, animationOffset)
    .from(aboutMeContact, {
    duration: animationDuration,
    y: 50,
    opacity: 0,
    ease: animationEase
    }, animationOffset);
}