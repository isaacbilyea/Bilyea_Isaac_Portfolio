export function gsapContact() {
    
    //VARIABLES
    const formText = document.querySelector('#form-text');
    const formInput = document.querySelector('#form-input');

    const animationDuration = 1;
    const animationEase = 'power2.out';
    const animationOffset = '-=0.4';

    const tl = gsap.timeline();

    tl.from(formText, {
    duration: animationDuration,
    y: 200,
    opacity: 0,
    ease: animationEase
    }, animationOffset)
    .from(formInput, {
    duration: animationDuration,
    y: 50,
    opacity: 0,
    ease: animationEase
    }, animationOffset)
}