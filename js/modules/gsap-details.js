export function gsapDetails() {

    //VARIABLES
    const caseStudyTitle = document.querySelector('#case-study-title');
    const caseStudyText = document.querySelector('#case-study-text');
    const scrollLineCon = document.querySelector('#scroll-line-container');

    const animationDuration = 1;
    const animationEase = 'power2.out';
    const animationOffset = '-=0.4';

    const tl = gsap.timeline();

    tl.from(caseStudyTitle, {
    duration: animationDuration,
    y: 200,
    opacity: 0,
    ease: animationEase
    }, animationOffset)
    .from(caseStudyText, {
    duration: animationDuration,
    y: 50,
    opacity: 0,
    ease: animationEase
    }, animationOffset)
    .from(scrollLineCon, {
    duration: animationDuration,
    opacity: 0,
    ease: animationEase
    }, animationOffset)
}