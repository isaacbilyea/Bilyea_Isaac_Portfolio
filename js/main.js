(()=> {

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
    });

function toggleMenu() {
    hamburgerMenu.classList.toggle('activate');
    mainNav.classList.toggle('show');
    body.classList.toggle('menu-open');
};

hamburgerMenu.addEventListener('click', toggleMenu);
})();