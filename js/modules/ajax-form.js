export function ajaxForm() {

    //VARIABLES
    const form = document.querySelector('#form');
    const feedback = document.querySelector('#feedback');
    const footerBall = document.querySelector('#ball');
    const popup = document.querySelector('#thank-you-popup');
    const closeBtn = document.querySelector('#close-popup');
    const contactForm = document.querySelector('#contact-form');

    gsap.registerPlugin(MotionPathPlugin, ScrollToPlugin);

    //FUNCTIONS
    function animateBall() {
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
            onComplete: showPopup
        });
    }

    function showPopup() {
        popup.classList.add('shown');
        document.body.classList.add('popup-visible');
    
        gsap.set(popup, { 
            scale: 0, 
            opacity: 0, 
            y: 0,
            visibility: 'visible',
            display: 'flex'
        });
    
        gsap.to(window, {
            duration: 0.8,
            scrollTo: {
                y: contactForm,
                offsetY: window.innerHeight/2 - popup.offsetHeight/2,
            },
            ease: "power2.inOut"
        });
    
        gsap.to(popup, {
            scale: 1,
            opacity: 1,
            y: 0,
            duration: 0.8,
            ease: "back.out(1.7)"
        });
    }

    function resetBall() {
        gsap.set(footerBall, {
            clearProps: "all"
        });
    }

    function closePopup() {
        gsap.to(popup, {
            scale: 0,
            opacity: 0,
            y: -50,
            duration: 0.3,
            ease: "back.in(1.7)",
            onComplete: () => {
                popup.classList.remove('shown');
                document.body.classList.remove('popup-visible');
                feedback.innerHTML = '';
                resetBall();
            }
        });
    }

    function regForm(e) {
        e.preventDefault();

        const thisForm = e.currentTarget;
        const url = "sendmail.php";
        console.log(thisForm.elements);
        const formData = 
        "name="+thisForm.elements.name.value+
        "&email="+thisForm.elements.email.value+
        "&message="+thisForm.elements.message.value;

        fetch(url, {
            method: "POST",
            headers: {
                "Content-Type": "application/x-www-form-urlencoded"
            },
            body: formData
        })
        .then(response => response.json())
        .then(response => {
            feedback.innerHTML = '';
            if(response.errors) {
                response.errors.forEach(error => {
                    const errorElement = document.createElement('p');
                    errorElement.textContent = error;
                    feedback.appendChild(errorElement);
                })
            } else {
                form.reset();
                const messageElement = document.createElement('p');
                messageElement.textContent = response.message;
                feedback.appendChild(messageElement);
                animateBall();
            }
            gsap.to(window, {
                duration: 1,
                scrollTo: {
                    y: feedback,
                    offsetY: window.innerHeight/2 - feedback.offsetHeight/2,
                    autoKill: false
                },
                ease: "power2.inOut"
            });
        })
        .catch(error => {
            console.log(error);
            feedback.innerHTML = '';
            feedback.innerHTML = `<p>Sorry there seems to be an issue. Either you're using an older browser or javascript is disabled.</p>`
        });
    }

    //EVENT LISTENERS
    form.addEventListener('submit', regForm);

    closeBtn.addEventListener('click', closePopup);

    document.addEventListener('click', ()=> {
        if (popup.classList.contains('shown')) {
            closePopup();
        }
    });

}