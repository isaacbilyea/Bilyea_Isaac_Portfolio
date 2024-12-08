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

  //FUNCTIONS
  function changeTextColour() {
    const progress = this.progress();

    if(welcomeSpans) {
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
    const urlParams = new URLSearchParams(window.location.search);
    const popup = document.querySelector('#thank-you-popup');
    const closeBtn = document.querySelector('#close-popup');

    gsap.registerPlugin(MotionPathPlugin);

    gsap.set("#ball", {
        x: 0,
        y: 0,
    });

    //FUNCTIONS
    function animateBall() {


        gsap.to("#ball", {
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
        });
    }

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
const cursorSvg = 'images/cursor.svg';
const studyColor = dotCursor.getAttribute('data-color');
const activeMenuDot = document.querySelector('.active');

//Array of pointer elements
const pointerElements = [
  'a', 
  'button', 
  'input', 
  'select', 
  'textarea', 
  'hover',
];

const cursorSVG = `<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 29.73 42.01">
  <path id="inner-cursor" d="M6,31.63l6.32-6.15s.02-.01.03-.02c.09-.08.18-.14.29-.19,0,0,0,0,0,0,.1-.04.21-.06.33-.06.01,0,.03,0,.04,0,.02,0,.05,0,.07,0,.02,0,.03,0,.04,0,.01,0,.02,0,.03,0,.02,0,.03,0,.05,0,.04,0,.07.02.1.03.03.01.07.02.1.03.04.02.09.04.13.07.03.02.06.03.09.06.04.03.08.07.11.11.02.02.05.04.06.07.04.06.08.12.11.19,0,0,.01.02.02.03h0s0,0,0,0l.02.04,6.08,13.78,2.46-1.13-6.26-13.68c-.14-.3-.12-.64.05-.92.16-.28.45-.46.78-.49l9.38-.81L6,3.32v28.32Z"/>
  <path fill="#2d2d2d" d="M29.42,22.68L5.69.27c-.08-.08-.18-.13-.28-.18-.03-.01-.05-.02-.08-.03-.09-.03-.18-.05-.28-.06-.02,0-.04-.01-.06-.01H1C.73,0,.48.1.29.29c-.19.19-.29.44-.29.71v33c0,.55.45,1,1,1h4s.04-.01.06-.01c.09,0,.18-.02.27-.05.03-.01.06-.02.09-.03.1-.05.2-.11.28-.19h0s0-.01,0-.01l4.36-4.24,4.56,10.92c.16.37.52.61.92.61h3.83s.03,0,.05,0c.01,0,.03,0,.04,0h.07c.24,0,.46-.09.63-.23l4.06-1.86c.5-.23.72-.82.49-1.33l-6.09-13.3,10.19-.88c.39-.03.73-.29.86-.67.13-.37.03-.79-.26-1.06ZM17.04,23.41c-.32.03-.61.21-.78.49-.16.28-.18.62-.05.92l6.26,13.68-2.46,1.13-6.08-13.78-.02-.04s0,0,0,0h0s-.01-.02-.02-.03c-.03-.07-.07-.13-.11-.19-.02-.02-.04-.04-.06-.07-.04-.04-.07-.08-.11-.11-.03-.02-.06-.04-.09-.06-.04-.02-.08-.05-.13-.07-.03-.01-.07-.02-.1-.03-.03-.01-.07-.03-.1-.03-.02,0-.03,0-.05,0-.01,0-.02,0-.03,0-.01,0-.03,0-.04,0-.02,0-.05,0-.07,0-.01,0-.03,0-.04,0-.11,0-.22.02-.33.06,0,0,0,0,0,0-.11.04-.2.11-.29.19-.01,0-.02.01-.03.02l-6.32,6.15V3.32l20.42,19.29-9.38.81Z"/>
</svg>`

//Case Study uses brand colour
if(studyColor) {
  pointerElements.forEach(selector => {
    document.addEventListener('mouseover', (e) => {
      if (e.target.closest(selector)) {
        dotCursor.innerHTML = cursorSVG;
        dotCursor.style.backgroundColor = `transparent`;
        dotCursor.querySelector('#inner-cursor').setAttribute('fill', studyColor);
        dotCursor.style.width = '1rem';
        dotCursor.style.height = '1rem';
      }
    });
  
    document.addEventListener('mouseout', (e) => {
      if (e.target.closest(selector)) {
        dotCursor.innerHTML = '';
        dotCursor.style.backgroundColor = studyColor;
        dotCursor.style.width = '1rem';
        dotCursor.style.height = '1rem';
      }
    });
});

activeMenuDot.style.setProperty('--dot-color', studyColor);
} 
//Every other page usses hue slider colour
else {
  pointerElements.forEach(selector => {
  document.addEventListener('mouseover', (e) => {
    if (e.target.closest(selector)) {
      dotCursor.innerHTML = cursorSVG;
      dotCursor.style.backgroundColor = `transparent`;
      dotCursor.querySelector('#inner-cursor').setAttribute('fill', 'var(--dot-color)');
      dotCursor.style.width = '1rem';
      dotCursor.style.height = '1rem';
    }
  });

  document.addEventListener('mouseout', (e) => {
    if (e.target.closest(selector)) {
      dotCursor.innerHTML = '';
      dotCursor.style.backgroundColor = 'var(--dot-color)';
      dotCursor.style.width = '1rem';
      dotCursor.style.height = '1rem';
    }
  });
});
}

document.addEventListener('mousemove', (e) => {
  dotCursor.style.top = `${e.clientY}px`;
  dotCursor.style.left = `${e.clientX}px`;
});


})();


//----------------------------------------------------------------------------------//


//Case Study Scroll
(() => {
if (document.querySelector('#overview')) {
  const firstCard = document.querySelector('#overview');
  const lastCard = document.querySelector('#reflection');
  const scrollLine = document.querySelector('#scroll-line-container');
  const scrollBall = document.querySelector('#scroll-ball');
  const cards = document.querySelectorAll('.study-card');

  // Add grayscale to all cards except first one
  cards.forEach(card => {
    card.dataset.originalBackgroundColor = getComputedStyle(card).backgroundColor;
  });

  function adjustLinePosition() {
    const startTop = firstCard.getBoundingClientRect().top + window.scrollY;
    const endTop = lastCard.getBoundingClientRect().top + window.scrollY;
    const lineHeight = endTop - startTop;

    scrollLine.style.top = `${startTop}px`;
    scrollLine.style.height = `${lineHeight}px`;
  }

  adjustLinePosition();
  window.addEventListener('resize', adjustLinePosition);

  // Create ScrollTrigger for ball movement
  const ballAnimation = gsap.to(scrollBall, {
    scrollTrigger: {
      trigger: '#case-study-text',
      start: 'top 50%',
      end: 'bottom 50%',
      scrub: true,
      onUpdate: (self) => {
        const ballRect = scrollBall.getBoundingClientRect();

        // Check each card's position relative to ball
        cards.forEach(card => {
          const cardRect = card.getBoundingClientRect();
          const cardTop = cardRect.top;
          const cardBottom = cardRect.bottom;

          if (ballRect.bottom >= cardTop && ballRect.top <= cardBottom) {
            card.style.backgroundColor = card.dataset.originalBackgroundColor;
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