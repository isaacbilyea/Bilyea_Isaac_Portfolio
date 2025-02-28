export function burgerMenu() {

    //VARIABLES
    const hamburgerMenu = document.querySelector('#hamburger-menu'),
    mainNav = document.querySelector('#main-nav'),
    body = document.querySelector('body'),
    scrollbarWidth = window.innerWidth - document.documentElement.clientWidth;


    document.documentElement.style.setProperty('--scrollbar-width', `${scrollbarWidth}px`);

    //FUNCTIONS

    function toggleMenu() {
        hamburgerMenu.classList.toggle('activate');
        mainNav.classList.toggle('show');
        body.classList.toggle('menu-open'); //Used to set body to hide overflow when menu is open
    };

 
    function resetMenu() {
        if (window.innerWidth >= 1200) {
            hamburgerMenu.classList.remove('activate');
            mainNav.classList.remove('show');
            body.classList.remove('menu-open');
        }
    }

    //EVENT LISTENERS

    hamburgerMenu.addEventListener('click', toggleMenu);
    window.addEventListener('resize', resetMenu);

}