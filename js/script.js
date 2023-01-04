const passwordField = document.getElementById("password");
const emailField = document.getElementById("email");
const rememberMeField = document.getElementById("remember-me");
const passwordErrorText = document.querySelector(".password-field .error-text");
const emailErrorText = document.querySelector(".email-field .error-text");
const passwordShowHiddenBtn = document.getElementById("password-hide-show");

let loginError;

function setErrorText(element,text) {
    element.innerHTML = `${text}`;
}

// email validation
const emailPattern  = /[a-zA-Z0-9._+-]+@[a-zA-Z0-9 -]+\.[a-z]{2,}/g;
function validateEmail() {
    const email = this.value;
    let goodEmail = true;
    emailErrorText.style.color = "red";
    if (email.length < 8) {
        setErrorText(emailErrorText, "email is too short");
        goodEmail = false;
    }
    if (!email.match(emailPattern)) {
        setErrorText(emailErrorText, "email is not valid.");
        goodEmail = false;
    }
    if (goodEmail) {
        emailErrorText.style.color = "green";
        setErrorText(emailErrorText, "email accepted.");
    }
    return goodEmail;
}
emailField.addEventListener("input", validateEmail);

//toggle visibility of password
passwordShowHiddenBtn.addEventListener("click", ()=>{
    if (passwordShowHiddenBtn.dataset.psHidden === "true") {
        passwordShowHiddenBtn.dataset.psHidden = "false";
        passwordShowHiddenBtn.innerText = "view";
        passwordField.type = "password";
    } else {
        passwordShowHiddenBtn.dataset.psHidden = "true";
        passwordShowHiddenBtn.innerText = "hide";
        passwordField.type = "text";
    }
    // console.log(passwordShowHiddenBtn.dataset.psHidden);
});

//validate password
let upperCaseLetters = /[A-Z]/g;
let numbers = /[0-9]/g;
let lowerCaseLetters = /[a-z]/g;

function validatePassword() {
    const password = this.value;
    let goodPassword = true;
    passwordErrorText.style.color = "red";
    if (password.length < 8) {
        // console.log(password)
        setErrorText(passwordErrorText,"password is too short");
        goodPassword = false;
    }
    if (!password.match(lowerCaseLetters)) {
        setErrorText(passwordErrorText,"add lower case letter/s.");
        goodPassword = false;
    }
    if (!password.match(upperCaseLetters)) {
        setErrorText(passwordErrorText,"add upper case letter/s.");
        goodPassword = false;
    }
    if (!password.match(numbers)) {
        setErrorText(passwordErrorText,"add number/s.");
        goodPassword = false;
    }
    if (!password) {
        setErrorText(passwordErrorText,"password cannot be empty");
        goodPassword = false
    }
    if (goodPassword) {
        passwordErrorText.style.color = "green";
        setErrorText(passwordErrorText,"password accepted.");
    }
    return goodPassword;
}

passwordField.addEventListener("input", validatePassword);
