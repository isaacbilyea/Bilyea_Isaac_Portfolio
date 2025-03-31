export function ajaxForm() {

    //VARIABLES
    const form = document.querySelector('#form');
    const feedback = document.querySelector('#feedback');
    const footerBall = document.querySelector('#ball');
    const popup = document.querySelector('#thank-you-popup');
    const closeBtn = document.querySelector('#close-popup');

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
            onComplete: function() {
                popup.classList.remove('hidden');
                gsap.to(window, {
                    duration: 1,
                    scrollTo: {
                        y: popup,
                        offsetY: window.innerHeight/2 - popup.offsetHeight/2,
                        autoKill: false
                    },
                    ease: "power2.inOut"
                });
            }
        });
    }

    function resetBall() {
        gsap.set(footerBall, {
            clearProps: "all"
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

    closeBtn.addEventListener('click', () => {
        popup.classList.add('hidden');
        feedback.innerHTML = '';
        resetBall();
    });

}