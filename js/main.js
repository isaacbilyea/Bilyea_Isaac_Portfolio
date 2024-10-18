(()=> {

//VARIABLES

const hamburgerMenu = document.querySelector('#hamburger-menu'),
      mainNav = document.querySelector('#main-nav'),
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


//FUNCTIONS

//Toggles classes for showing/hiding mobile menu stuff
function toggleMenu() {
    hamburgerMenu.classList.toggle('activate');
    mainNav.classList.toggle('show');
    body.classList.toggle('menu-open');
};


//EVENT LISTENERS

hamburgerMenu.addEventListener('click', toggleMenu);

})();