export function contactBall() {
    
    //VARIABLES
    const form = document.querySelector('form');
    const footerBall = document.querySelector('#ball')
    const popup = document.querySelector('#thank-you-popup');
    const closeBtn = document.querySelector('#close-popup');
    const urlParams = new URLSearchParams(window.location.search);

    gsap.registerPlugin(MotionPathPlugin);

    //FUNCTIONS
    function animateBall(e) {

        e.preventDefault();

        gsap.to(footerBall, {
            duration: 2,
            ease: "power1.inOut",
            motionPath: {
                path: "#path",
                align: "#path",
                alignOrigin: [0, 0],
                start: 1,
                end: 0,
                curviness: 2,
                autoRotate: true
            },
            onComplete: () => {
                //Submits form after animation
                HTMLFormElement.prototype.submit.call(form);
            }
        });
    }

    //Shows popup if form is submitted, checks using link set by sendmail.php
    if (urlParams.get('submitted') === 'true') {
        popup.classList.remove('hidden');
    }

    //EVENT LISTENERS
    if (form) {
        form.addEventListener('submit', animateBall);
    }

    if (closeBtn) {
        closeBtn.addEventListener('click', () => {
        popup.classList.add('hidden');
    })};
}