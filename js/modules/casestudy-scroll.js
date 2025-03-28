export function caseStudyScroll() {
    //VARIABLES
    const cards = document.querySelectorAll('.study-card, .study-card-image');
    const scrollLine = document.querySelector('#scroll-line-container');
    const scrollBall = document.querySelector('#scroll-ball');
    const progressLine = document.querySelector('#scroll-progress');
    const currentSection = document.querySelector('#current-section');
    const studyColor = document.querySelector('.study-card').getAttribute('data-color');

    const root = document.documentElement;
    root.style.setProperty('--dot-color', studyColor);

    //FUNCTIONS
    function updateCurrentSection(title) {
        if (title) {
            currentSection.textContent = title;
            currentSection.classList.add('visible');
        } else {
            currentSection.classList.remove('visible');
        }
    }

    function resetAllCards() {
        cards.forEach(card => card.classList.remove('active'));
    }

    cards.forEach(card => {
        ScrollTrigger.create({
            trigger: card,
            start: "top center",
            end: "bottom center",
            onUpdate: () => {
                resetAllCards();
                card.classList.add('active');
                updateCurrentSection(card.dataset.section);
            }
        });
    });

    ScrollTrigger.create({
        trigger: '#case-study-text',
        start: 'top center',
        end: 'bottom center',
        onUpdate: (self) => {
            progressLine.style.height = `${self.progress * 100}%`;
            scrollBall.style.transform = `translate(-50%, ${self.progress * scrollLine.offsetHeight}px)`;
        }
    });
}