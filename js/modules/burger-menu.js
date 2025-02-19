export function burgerMenu() {

    //VARIABLES
    const hamburgerMenu = document.querySelector('#hamburger-menu'),
    mainNav = document.querySelector('#main-nav'),
    body = document.querySelector('body');


    //FUNCTIONS

    function toggleMenu() {
        hamburgerMenu.classList.toggle('activate');
        mainNav.classList.toggle('show');
        body.classList.toggle('menu-open'); //Used to set body to hide overflow when menu is open
    };

    //EVENT LISTENERS

    hamburgerMenu.addEventListener('click', toggleMenu);

}