export function ajaxForm() {

    //VARIABLES
    const form = document.querySelector('#form');
    const feedback = document.querySelector('#feedback');

    //FUNCTIONS
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
            }
            feedback.scrollIntoView({behavior: 'smooth', block: 'center'})
        })
        .catch(error => {
            console.log(error);
            feedback.innerHTML = '';
            feedback.innerHTML = `<p>Sorry there seems to be an issue. Either you're using an older browser or javascript is disabled.</p>`
        });
    }

    //EVENT LISTENERS
    form.addEventListener('submit', regForm);
}