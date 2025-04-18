export function cursorDot() {

    //VARIABLES
    const dotCursor = document.querySelector('.dot-cursor');
    const pointerCursor = document.querySelector('.pointer-cursor');
    const innerCursor = document.querySelector('#inner-cursor');
    const studyColor = dotCursor.getAttribute('data-color');
    const activeMenuDot = document.querySelector('.active');
    const defaultColor = studyColor || 'var(--dot-color, #DA5C31)';

    //Array of pointer elements
    const pointerElements = [
    'a', 
    'button', 
    'input', 
    'select', 
    'textarea', 
    '#about-me-image',
    '.dot-hue-slider',
    '.study-card',
    '.study-card-image',
    '#thank-you-popup'
    ];

    //Removes cursor for touch devices
    if ('ontouchstart' in window) {
        let dotCursor = document.querySelector('.dot-cursor');
        let pointerCursor = document.querySelector('.pointer-cursor');
        
        dotCursor.style.display = 'none';
        pointerCursor.style.display = 'none';
    
        return;
    }
    
    //Sets colour of mobile menu dot
    if(studyColor) {
        activeMenuDot.style.setProperty('--dot-color', studyColor);
    }

    //FUNCTIONS

    function updateCursorColour(colour) {
        dotCursor.style.backgroundColor = colour;
        innerCursor.setAttribute('fill', colour);
    }
    
    function mouseOverColour(e) {
        const projectCard = e.target.closest('.project-card');
        const studyCard = e.target.closest('.study-card-image');
        
        if (projectCard) {
            updateCursorColour(getComputedStyle(projectCard).backgroundColor);
        } else if (studyCard) {
            updateCursorColour(studyCard.getAttribute('data-color')); 
        } else {
            updateCursorColour(defaultColor);
        }
    }

    //EVENT LISTENERS

    document.addEventListener('mouseover', mouseOverColour);

    //Changes cursor based on pointer elements
    pointerElements.forEach(selector => {
        document.addEventListener('mouseover', (e) => {
        if (e.target.closest(selector)) {
            pointerCursor.style.opacity = '1';
            dotCursor.style.opacity = '0';
        }
        });

        document.addEventListener('mouseout', (e) => {
        if (e.target.closest(selector)) {
            pointerCursor.style.opacity = '0';
            dotCursor.style.opacity = '1';
        }
        });
    });

    document.addEventListener('mousemove', (e) => {
        requestAnimationFrame(() => { //Had to add this method to reduce lag on browsers other than firefox
        dotCursor.style.top = `${e.clientY}px`; 
        dotCursor.style.left = `${e.clientX}px`; 
        pointerCursor.style.top = `${e.clientY}px`; 
        pointerCursor.style.left = `${e.clientX}px`; 
        }); 
    });
}