//Hamburger Menu
(()=> {

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

})();


//----------------------------------------------------------------------------------//


//Logo Hover Animation
(() => {
  
  //VARIABLES
  const logoContainer = document.querySelector(".logo-container");
  const initials = document.querySelector("#b-initial path");
  //Puts paths in an array for reverse method
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

  if(window.innerWidth >= 1200) {
    logoContainer.addEventListener("mouseenter", typeFullName);
    logoContainer.addEventListener("mouseleave", untypeFullName);
  }

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


//Intro Scroll Ball
(() => {
  gsap.registerPlugin(ScrollTrigger);

  //VARIABLES
  const scrollBall = document.querySelector("#seperator-ball");
  const welcomeSpans = document.querySelectorAll("#welcome span");

  if(welcomeSpans.length > 0) {
  //FUNCTIONS
  function changeTextColour() {
    const progress = this.progress();

    //Swaps colours of welcome text based on balls progress
    if (progress === 0) {
      //top = 0%
      welcomeSpans[0].style.color = "var(--dot-color)";
      welcomeSpans[1].style.color = "#2D2D2D";
    } else if (progress === 1) {
      //top = 100%
      welcomeSpans[0].style.color = "#2D2D2D";
      welcomeSpans[1].style.color = "var(--dot-color)";
    }
  }

    gsap.to(scrollBall, {
      top: "100%", 
      ease: "linear",
      duration: 0.1,
      onUpdate: changeTextColour,
      scrollTrigger: {
        trigger: "#line-seperator",
        start: "top 40%",
        end: "bottom 50%",
        scrub: true,
      },
    });
  }
})();



//----------------------------------------------------------------------------------//


//Dot Colour Changer
(()=> {

    //VARIABLES
    const slider = document.querySelector('.dot-hue-slider input');
    const root = document.querySelector(':root');
    const sliderContainer = document.querySelector('.dot-hue-slider');
    const savedHue = localStorage.getItem('dynamicHue');

    if (slider) {

      slider.value = savedHue;
      
      //Updates the CSS variable with the hue
      let hue = savedHue;
      root.style.setProperty('--dynamic-hue', hue);

      //EVENT LISTENERS 
      slider.addEventListener('input', () => {
        let hue = slider.value;
        
        localStorage.setItem('dynamicHue', hue);
        root.style.setProperty('--dynamic-hue', hue);
      })

      //Click for mobile and tablet
      sliderContainer.addEventListener('click', () => {
        if (window.innerWidth < 1200) {
        sliderContainer.classList.toggle('expanded');
        slider.disabled = false;
        }
      });

      //Hover for desktop
      sliderContainer.addEventListener('mouseenter', () => {
        slider.disabled = false;
      });
    }
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


//----------------------------------------------------------------------------------//


//Contact Form Ball and Popup
(() => {

   //VARIABLES
    const form = document.querySelector('form');
    const footerBall = document.querySelector('#ball')
    const popup = document.querySelector('#thank-you-popup');
    const closeBtn = document.querySelector('#close-popup');
    const urlParams = new URLSearchParams(window.location.search);

    gsap.registerPlugin(MotionPathPlugin);

    //FUNCTIONS
    function animateBall(e) {

      e.preventDefault();

        gsap.to(footerBall, {
            duration: 2,
            ease: "power1.inOut",
            motionPath: {
                path: "#path",
                align: "#path",
                alignOrigin: [0, 0],
                start: 1,
                end: 0,
                curviness: 2,
                autoRotate: true
            },
            onComplete: () => {
              //Submits form after animation
              HTMLFormElement.prototype.submit.call(form);
          }
        });
    }

    //Shows popup if form is submitted, checks using link set by sendmail.php
    if (urlParams.get('submitted') === 'true') {
      popup.classList.remove('hidden');
    }

    //EVENT LISTENERS
    if (form) {
      form.addEventListener('submit', animateBall);
    }

    if (closeBtn) {
      closeBtn.addEventListener('click', () => {
        popup.classList.add('hidden');
    })};

})();


//----------------------------------------------------------------------------------//


//Cursor Dot
(() => {

  //VARIABLES
  const dotCursor = document.querySelector('.dot-cursor');
  const pointerCursor = document.querySelector('.pointer-cursor');
  const studyColor = dotCursor.getAttribute('data-color');
  const activeMenuDot = document.querySelector('.active');

  //Array of pointer elements
  const pointerElements = [
    'a', 
    'button', 
    'input', 
    'select', 
    'textarea', 
    '#about-me-image',
  ];

  //Sets colour of mobile menu dot
  if(studyColor) {
    activeMenuDot.style.setProperty('--dot-color', studyColor);
  }

  //EVENT LISTENERS

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
})();


//----------------------------------------------------------------------------------//


//Case Study Scroll
(() => {

  //VARIABLES
  const firstCard = document.querySelector('#overview');
  const lastCard = document.querySelector('#reflection');
  const cards = document.querySelectorAll('.study-card');
  const scrollLine = document.querySelector('#scroll-line-container');
  const scrollBall = document.querySelector('#scroll-ball');

  if (firstCard) {

  const studyColor = firstCard.getAttribute('data-color');

  //Creates line from top to bottom card
  function updateScrollLineDimensions() {
    const startTop = firstCard.getBoundingClientRect().top + window.scrollY;
    const endTop = lastCard.getBoundingClientRect().top + window.scrollY;
    const lineHeight = endTop - startTop;

    scrollLine.style.opacity = 1;
    scrollLine.style.top = `${startTop}px`;
    scrollLine.style.height = `${lineHeight}px`;
  }

  updateScrollLineDimensions();

  //Scroll ball animation and interactions
  gsap.to(scrollBall, {
    scrollTrigger: {
      trigger: '#case-study-text',
      start: 'top 50%',
      end: 'bottom 80%',
      scrub: true,
      onUpdate: (self) => {
        const ballRect = scrollBall.getBoundingClientRect();

        cards.forEach(card => {
          const cardRect = card.getBoundingClientRect();
          const cardTop = cardRect.top;
          const cardBottom = cardRect.bottom;
          //Checks if the ball is in between the top and bottom of the card
          if (ballRect.bottom >= cardTop && ballRect.top <= cardBottom) {
            card.style.backgroundColor = studyColor;
            card.style.filter = 'grayscale(0%)';
            card.style.transform = 'scale(1.05)';
          } else {
            card.style.backgroundColor = '#2d2d2d';
            card.style.filter = 'grayscale(100%)';
            card.style.transform = 'scale(1)';
          }
        });
      },
    },
    y: () => scrollLine.offsetHeight - scrollBall.offsetHeight,
    ease: 'none'
  });

    window.addEventListener('resize', updateScrollLineDimensions);

  }
})();


//----------------------------------------------------------------------------------//


//GSAP - Home
(() => {

  //VARIABLES
  const warningIntro = document.querySelector('#warning-intro');
  const lineSeperator = document.querySelector('#line-seperator');
  const welcome = document.querySelector('#welcome');
  const video = document.querySelector('#video-con');
  const projectHeader = document.querySelector('#project-header');
  const projectCards = document.querySelectorAll('.project-card');

  const animationDuration = 1;
  const animationEase = 'power2.out';
  const animationOffset = '-=0.4';

  const tl = gsap.timeline();

  //Initial Animations
  tl.from(warningIntro, {
    duration: animationDuration,
    y: 200,
    opacity: 0,
    ease: animationEase
  }, animationOffset)
  .from(lineSeperator, {
    duration: animationDuration,
    y: 50,
    opacity: 0,
    ease: animationEase
  }, animationOffset)
  .from(welcome, {
    duration: animationDuration,
    y: 50,
    opacity: 0,
    ease: animationEase
  }, animationOffset)

  gsap.from(video, {
    scrollTrigger: {
      trigger: video,
      start: "top 90%",
      end: "bottom 75%",
      toggleActions: "play none none reverse",
      scrub: 0.1,
    },
    duration: animationDuration,
    y: 50,
    opacity: 0,
    ease: animationEase
  });

  //Scroll Trigger Animations
  gsap.from(projectHeader, {
    scrollTrigger: {
      trigger: projectHeader,
      start: "top 90%",
      end: "bottom 75%",
      toggleActions: "play none none reverse",
      scrub: 0.1,
    },
    duration: animationDuration,
    y: 50,
    opacity: 0,
    ease: animationEase
  });

  projectCards.forEach(card => {
    gsap.from(card, {
      scrollTrigger: {
        trigger: card,
        start: "top 90%",
        end: "bottom 75%",
        toggleActions: "play none none reverse",
        scrub: 0.1,
      },
      duration: animationDuration,
      y: 50,
      opacity: 0,
      ease: animationEase
    });
  });

})();


//----------------------------------------------------------------------------------//


//GSAP - Case Studies
(() => {

  //VARIABLES
  const caseStudyTitle = document.querySelector('#case-study-title');
  const caseStudyText = document.querySelector('#case-study-text');
  const scrollLineCon = document.querySelector('#scroll-line-container');

  const animationDuration = 1;
  const animationEase = 'power2.out';
  const animationOffset = '-=0.4';

  const tl = gsap.timeline();

  tl.from(caseStudyTitle, {
    duration: animationDuration,
    y: 200,
    opacity: 0,
    ease: animationEase
  }, animationOffset)
  .from(caseStudyText, {
    duration: animationDuration,
    y: 50,
    opacity: 0,
    ease: animationEase
  }, animationOffset)
  .from(scrollLineCon, {
    duration: animationDuration,
    opacity: 0,
    ease: animationEase
  }, animationOffset)

})();

//----------------------------------------------------------------------------------//


//GSAP - About
(() => {

  //VARIABLES
  const aboutMeImage = document.querySelector('#about-me-image');
  const aboutMeText = document.querySelector('#about-me-text');
  const aboutMeContact = document.querySelector('#about-me-contact');

  const animationDuration = 1;
  const animationEase = 'power2.out';
  const animationOffset = '-=0.4';

  const tl = gsap.timeline();

  tl.from(aboutMeImage, {
    duration: animationDuration,
    y: 300,
    opacity: 0,
    ease: animationEase
  }, animationOffset)
  .from(aboutMeText, {
    duration: animationDuration,
    y: 50,
    opacity: 0,
    ease: animationEase
  }, animationOffset)
  .from(aboutMeContact, {
    duration: animationDuration,
    y: 50,
    opacity: 0,
    ease: animationEase
  }, animationOffset);

})();


//----------------------------------------------------------------------------------//


//GSAP - Contact
(() => {

  //VARIABLES
  const formText = document.querySelector('#form-text');
  const formInput = document.querySelector('#form-input');

  const animationDuration = 1;
  const animationEase = 'power2.out';
  const animationOffset = '-=0.4';

  const tl = gsap.timeline();

  tl.from(formText, {
    duration: animationDuration,
    y: 200,
    opacity: 0,
    ease: animationEase
  }, animationOffset)
  .from(formInput, {
    duration: animationDuration,
    y: 50,
    opacity: 0,
    ease: animationEase
  }, animationOffset)

})();