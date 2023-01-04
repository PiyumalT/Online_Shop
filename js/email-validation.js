const emailPattern  = /[a-zA-Z0-9._+-]+@[a-zA-Z0-9 -]+\.[a-z]{2,}/g;
emailField.addEventListener("input", ()=>{
    const email = emailField.value;
    let goodEmail = true;
    emailErrorText.style.color = "red";
    if (email.length < 8) {
        emailErrorText.innerHTML = "email is too short";
        goodEmail = false;
    }
    if (!email.match(emailPattern)) {
        emailErrorText.innerHTML = "email is not valid.";
        goodEmail = false;
    }
    if (goodEmail) {
        emailErrorText.style.color = "green";
        emailErrorText.innerHTML = "email accepted.";
    }

});
