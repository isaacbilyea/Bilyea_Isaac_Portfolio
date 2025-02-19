export function imageSwitcher() {

    //VARIABLES

    let currentIndex = 0;

    const aboutMeCon = document.querySelector('#about-me-image'),
          aboutMeImage = document.querySelector('#about-me-image img'),
          aboutMeText = document.querySelector('#about-me-image p'),
          speechBubble = document.querySelector('#speech-bubble');

    const aboutMeContent = [
        {image: 'images/isaac-eatsfood.jpg', caption: 'ISAAC EATS FOOD'},
        {image: 'images/isaac-likestrees.jpeg', caption: 'ISAAC LIKES TREES'},
        {image: 'images/isaac-screams.jpeg', caption: 'ISAAC SCREAMS'},
        {image: 'images/isaac-jumps.jpeg', caption: 'ISAAC JUMPS'},
        {image: 'images/isaac-getsstuck.jpeg', caption: 'ISAAC GETS STUCK'},
        {image: 'images/isaac-smiles.jpeg', caption: 'ISAAC SMILES'},
        {image: 'images/isaac-what.jpeg', caption: 'ISAAC ?'},
    ];

    //FUNCTIONS

    //Changes image and caption for about me
    function changeAboutMe() {
        currentIndex = (currentIndex + 1) % aboutMeContent.length;
        aboutMeImage.src = aboutMeContent[currentIndex].image;
        aboutMeText.textContent = aboutMeContent[currentIndex].caption;

        speechBubble.classList.add('hidden');
    }

    //EVENT LISTENERS
    aboutMeCon.addEventListener('click', changeAboutMe);
}