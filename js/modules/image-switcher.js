export function imageSwitcher() {
    gsap.registerPlugin(TextPlugin);
    
    let currentIndex = 0;
    
    const aboutMeCon = document.querySelector('#about-me-image'),
          aboutMeImage = document.querySelector('#about-me-image img'),
          dynamicText = document.querySelector('#dynamic-about'),
          speechBubble = document.querySelector('#speech-bubble'),
          highlights = document.querySelectorAll('.highlight-word');

    const aboutMeContent = [
        {image: 'images/isaac-eatsfood.jpg', caption: 'EATS FOOD'},
        {image: 'images/isaac-likestrees.jpeg', caption: 'LIKES TREES'},
        {image: 'images/isaac-screams.jpeg', caption: 'SCREAMS'},
        {image: 'images/isaac-jumps.jpeg', caption: 'JUMPS'},
        {image: 'images/isaac-getsstuck.jpeg', caption: 'GETS STUCK'},
        {image: 'images/isaac-smiles.jpeg', caption: 'SMILES'},
        {image: 'images/isaac-what.jpeg', caption: '?'}
    ];

    function updateHighlight() {
        highlights.forEach(highlight => highlight.classList.remove('active'));
        const activeHighlight = document.querySelectorAll(`.highlight-${currentIndex}`)
        activeHighlight.forEach(highlight => {
            highlight.classList.add('active');
        });
    }

    function changeAboutMe() {
        currentIndex = (currentIndex + 1) % aboutMeContent.length;
        aboutMeImage.src = aboutMeContent[currentIndex].image;
        updateHighlight();

        const currentText = dynamicText.textContent;
        const tl = gsap.timeline();

        for (let i = currentText.length; i >= 0; i--) {
            tl.add(gsap.to(dynamicText, {
                text: currentText.substring(0, i),
                duration: 0.04,
                ease: "none"
            }));
        }

        tl.to(dynamicText, {
            text: aboutMeContent[currentIndex].caption,
            duration: 0.5,
            ease: "power1.in"
        });

        speechBubble.classList.add('hidden');
    }

    aboutMeCon.addEventListener('click', changeAboutMe);
    updateHighlight();
}