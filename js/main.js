(()=> {

//VARIABLES

let currentIndex = 0;

const hamburgerMenu = document.querySelector('#hamburger-menu'),
      mainNav = document.querySelector('#main-nav'),
      aboutMeCon = document.querySelector('#about-me-image'),
      aboutMeImage = document.querySelector('#about-me-image img'),
      aboutMeText = document.querySelector('#about-me-image p'),
      body = document.querySelector('body');

const player = new Plyr('video', {
settings: [
    'play-large',
    'play',    
    'progress', 
    'current-time',
    'mute',     
    'volume',
    'fullscreen' 
]
}); //Sets controls to remove defaults to get rid of settings

//Array of images and captions for about me page
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

//Toggles classes for showing/hiding mobile menu stuff
function toggleMenu() {
    hamburgerMenu.classList.toggle('activate');
    mainNav.classList.toggle('show');
    body.classList.toggle('menu-open'); //Used to set body to hide overflow when menu is open
};

//Changes image and caption for about me
function changeAboutMe() {
    currentIndex = (currentIndex + 1) % aboutMeContent.length;
    aboutMeImage.src = aboutMeContent[currentIndex].image;
    aboutMeText.textContent = aboutMeContent[currentIndex].caption;
}

//EVENT LISTENERS

hamburgerMenu.addEventListener('click', toggleMenu);

//Only adds eventlistener if aboutMeCon exists (other pages would give errors)
if (aboutMeCon) {
    aboutMeCon.addEventListener('click', changeAboutMe);
}

})();