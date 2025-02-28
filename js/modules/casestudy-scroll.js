export function caseStudyScroll() {

    //VARIABLES
    const firstCard = document.querySelector('#overview');
    const lastCard = document.querySelector('#reflection');
    const cards = document.querySelectorAll('.study-card');
    const scrollLine = document.querySelector('#scroll-line-container');
    const scrollBall = document.querySelector('#scroll-ball');

    const studyColor = firstCard.getAttribute('data-color');

    //Creates line from top to bottom card
    function updateScrollLineDimensions() {
    const startTop = firstCard.getBoundingClientRect().top + window.scrollY;
    const endTop = lastCard.getBoundingClientRect().top + window.scrollY;
    const lineHeight = endTop - startTop;

    scrollLine.style.opacity = 1;
    scrollLine.style.top = `${startTop}px`;
    scrollLine.style.height = `${lineHeight}px`;
    }

    updateScrollLineDimensions();

    //Scroll ball animation and interactions
    gsap.to(scrollBall, {
    scrollTrigger: {
        trigger: '#case-study-text',
        start: 'top 50%',
        end: 'bottom 80%',
        scrub: true,
        onUpdate: () => {
        const ballRect = scrollBall.getBoundingClientRect();

        cards.forEach(card => {
            const cardRect = card.getBoundingClientRect();
            const cardTop = cardRect.top;
            const cardBottom = cardRect.bottom;
            //Checks if the ball is in between the top and bottom of the card
            if (ballRect.bottom >= cardTop && ballRect.top <= cardBottom) {
            card.style.backgroundColor = studyColor;
            card.style.filter = 'grayscale(0%)';
            card.style.transform = 'scale(1.05)';
            } else {
            card.style.backgroundColor = '#2d2d2d';
            card.style.filter = 'grayscale(100%)';
            card.style.transform = 'scale(1)';
            }
        });
        },
    },
    y: () => scrollLine.offsetHeight - scrollBall.offsetHeight,
    ease: 'none'
    });

    window.addEventListener('resize', updateScrollLineDimensions);

}