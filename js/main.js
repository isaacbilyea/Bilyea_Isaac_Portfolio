//Hamburger Menu
(()=> {

//VARIABLES

const hamburgerMenu = document.querySelector('#hamburger-menu'),
      mainNav = document.querySelector('#main-nav'),
      body = document.querySelector('body');


//FUNCTIONS

//Toggles classes for showing/hiding mobile menu stuff
function toggleMenu() {
    hamburgerMenu.classList.toggle('activate');
    mainNav.classList.toggle('show');
    body.classList.toggle('menu-open'); //Used to set body to hide overflow when menu is open
};


//EVENT LISTENERS

hamburgerMenu.addEventListener('click', toggleMenu);

})();


//----------------------------------------------------------------------------------//


//Logo Hover Animation
(() => {
  
  //VARIABLES

  const logoContainer = document.querySelector(".logo-container");
  const initials = document.querySelector("#b-initial path");
  const fullNameLetters = [...document.querySelectorAll("#full-name path")];

  //FUNCTIONS

  function typeFullName() {

    gsap.to(initials, { opacity: 0, duration: 0.015 });

    gsap.to(fullNameLetters, {
      opacity: 1,
      stagger: 0.025, 
      duration: 0.015,
      ease: "power1.inOut",
    });
  }

  function untypeFullName() {

    gsap.killTweensOf(fullNameLetters);

    gsap.to(fullNameLetters.reverse(), {
      opacity: 0,
      stagger: 0.025,
      duration: 0.015,
      ease: "power1.inOut",
      onComplete: () => {
        fullNameLetters.reverse();
        gsap.to(initials, { opacity: 1, duration: 0.015 });
      },
    });
  }

  //EVENT LISTENERS

  logoContainer.addEventListener("mouseenter", typeFullName);
  logoContainer.addEventListener("mouseleave", untypeFullName);

})();

//----------------------------------------------------------------------------------//


//Plyr - Video Player
(()=> {

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

})();


//----------------------------------------------------------------------------------//


//Dot Colour Changer
(()=> {

    //VARIABLES
    const slider = document.querySelector('.dot-hue-slider input');
    const root = document.querySelector(':root');
    const sliderContainer = document.querySelector('.dot-hue-slider');

    const savedHue = localStorage.getItem('dynamicHue');
    if (savedHue) {
        slider.value = savedHue;
        
        // Update the CSS variable with the saved hue
        let hue = savedHue;
        if (hue === '0') {
            hue = 38.55;
        }
        root.style.setProperty('--dynamic-hue', hue);
    }

    //EVENT LISTENERS 
    slider.addEventListener('input', () => {

    let hue = slider.value;
    
    if (hue === '0') {
        hue = 38.55;
    }

    localStorage.setItem('dynamicHue', hue);

    root.style.setProperty('--dynamic-hue', hue);

    })

    sliderContainer.addEventListener('mouseenter', () => {
      sliderContainer.classList.toggle('expanded');
    });

    
    sliderContainer.addEventListener('mouseleave', () => {
      sliderContainer.classList.toggle('expanded');
    });

    sliderContainer.addEventListener('click', () => {
      sliderContainer.classList.toggle('expanded');
    });

})();


//----------------------------------------------------------------------------------//


//About Me Image Switcher
(()=> {

    //VARIABLES

    let currentIndex = 0;

    const aboutMeCon = document.querySelector('#about-me-image'),
          aboutMeImage = document.querySelector('#about-me-image img'),
          aboutMeText = document.querySelector('#about-me-image p'),
          speechBubble = document.querySelector('#speech-bubble');

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

    //Changes image and caption for about me
    function changeAboutMe() {
        currentIndex = (currentIndex + 1) % aboutMeContent.length;
        aboutMeImage.src = aboutMeContent[currentIndex].image;
        aboutMeText.textContent = aboutMeContent[currentIndex].caption;

        speechBubble.classList.add('hidden');
    }

    //EVENT LISTENERS

    //Only adds eventlistener if aboutMeCon exists (other pages would give errors)
    if (aboutMeCon) {
        aboutMeCon.addEventListener('click', changeAboutMe);
    }

})();

//Motion Path
(() => {

    const form = document.querySelector('form');

    gsap.registerPlugin(MotionPathPlugin);

    gsap.set("#ball", {
        x: 0,
        y: 0,
    });

    // FUNCTIONS
    function animateBall(e) {
        e.preventDefault();

        gsap.to("#ball", {
            duration: 3,
            ease: "power1.inOut",
            motionPath: {
                path: "#path",
                align: "#path",
                alignOrigin: [0, 0],
                start: 0,
                end: 1,
                curviness: 2,
                autoRotate: true
            },
        });
    }

    // EVENT LISTENERS
    if (form) {
      form.addEventListener('submit', animateBall);
    }

})();


//----------------------------------------------------------------------------------//

//Cursor Dot
(() => {

const dotCursor = document.querySelector('.dot-cursor');
const cursorSvg = 'images/cursor.svg'; // Replace with your SVG path

document.addEventListener('mousemove', (e) => {
  dotCursor.style.top = `${e.clientY}px`;
  dotCursor.style.left = `${e.clientX}px`;
});

// Interactive elements that will trigger custom cursor
const interactiveSelectors = [
  'a', 
  'button', 
  'input', 
  'select', 
  'textarea', 
  '[data-cursor-interact]'
];

interactiveSelectors.forEach(selector => {
  document.addEventListener('mouseover', (e) => {
    if (e.target.closest(selector)) {
      // Change cursor to SVG
      dotCursor.style.backgroundImage = `url(${cursorSvg})`;
      dotCursor.style.backgroundSize = 'contain';
      dotCursor.style.backgroundRepeat = 'no-repeat';
      dotCursor.style.width = '1rem';  // Adjust size as needed
      dotCursor.style.height = '1rem'; // Adjust size as needed
    }
  });

  document.addEventListener('mouseout', (e) => {
    if (e.target.closest(selector)) {
      // Revert to default dot cursor
      dotCursor.style.backgroundImage = 'none';
      dotCursor.style.width = '1rem';
      dotCursor.style.height = '1rem';
    }
  });
});

})();


//----------------------------------------------------------------------------------//


//Case Study Scroll
(() => {

document.addEventListener('DOMContentLoaded', () => {
  gsap.registerPlugin(ScrollTrigger);

  const firstCard = document.getElementById('overview');
  const lastCard = document.getElementById('reflection');
  const scrollLine = document.getElementById('scroll-line-container');
  const scrollBall = document.getElementById('scroll-ball');

  function adjustLinePosition() {
      const startTop = firstCard.getBoundingClientRect().top + window.scrollY;
      const endTop = lastCard.getBoundingClientRect().top + window.scrollY;
      const lineHeight = endTop - startTop;

      scrollLine.style.top = `${startTop}px`;
      scrollLine.style.height = `${lineHeight}px`;
  }

  adjustLinePosition();
  window.addEventListener('resize', adjustLinePosition);

  gsap.to(scrollBall, {
      scrollTrigger: {
          trigger: '#case-study-text',
          start: 'top top',
          end: 'bottom bottom',
          scrub: true
      },
      y: () => scrollLine.offsetHeight - scrollBall.offsetHeight,
      ease: 'none'
  });
});

// document.addEventListener('DOMContentLoaded', () => {
//   gsap.registerPlugin(ScrollTrigger);
//   const firstCard = document.getElementById('overview');
//   const lastCard = document.getElementById('reflection');
//   const scrollLine = document.getElementById('scroll-line-container');
//   const scrollBall = document.getElementById('scroll-ball');
//   const cards = document.querySelectorAll('.study-card');

//   function adjustLinePosition() {
//       const startTop = firstCard.getBoundingClientRect().top + window.scrollY;
//       const endTop = lastCard.getBoundingClientRect().top + window.scrollY;
//       const lineHeight = endTop - startTop;
//       scrollLine.style.top = `${startTop}px`;
//       scrollLine.style.height = `${lineHeight}px`;
//   }

//   adjustLinePosition();
//   window.addEventListener('resize', adjustLinePosition);

//   cards.forEach((card, index) => {
//     ScrollTrigger.create({
//       trigger: card,
//       start: 'top center',
//       end: 'bottom center',
//       onEnter: () => {
//         card.style.backgroundColor = '#FF7F50';  // Lighter orange on enter
//       },
//       onLeave: () => {
//         card.style.backgroundColor = '#DA5A2E';  // Original color
//       },
//       onEnterBack: () => {
//         card.style.backgroundColor = '#FF7F50';  // Lighter orange on enter back
//       },
//       onLeaveBack: () => {
//         card.style.backgroundColor = '#DA5A2E';  // Original color
//       }
//     });
//   });

//   gsap.to(scrollBall, {
//       scrollTrigger: {
//           trigger: '#case-study-text',
//           start: 'top top',
//           end: 'bottom bottom',
//           scrub: true
//       },
//       y: () => scrollLine.offsetHeight - scrollBall.offsetHeight,
//       ease: 'none'
//   });
// });

})();