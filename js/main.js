(()=> {
const hamburgerMenu = document.querySelector('#hamburger-menu'),
      mainNav = document.querySelector('#main-nav'); 

function toggleMenu() {
    console.log('clicked')
    hamburgerMenu.classList.toggle('activate');
    mainNav.classList.toggle('show');
};

hamburgerMenu.addEventListener('click', toggleMenu);
})();