let upperCaseLetters = /[A-Z]/g;
let numbers = /[0-9]/g;
let lowerCaseLetters = /[a-z]/g;
passwordField.addEventListener("input", ()=>{
    const password = passwordField.value;
    let goodPassword = true;
    passwordErrorText.style.color = "red";
    if (password.length < 8) {
        // console.log(password)
     passwordErrorText.innerHTML = "password is too short";
     goodPassword = false;
    }
    if (!password.match(lowerCaseLetters)) {
        passwordErrorText.innerHTML = "add lower case letter/s.";
        goodPassword = false;
    }
    if (!password.match(upperCaseLetters)) {
        passwordErrorText.innerHTML = "add upper case letter/s.";
        goodPassword = false;
    }
    if (!password.match(numbers)) {
        passwordErrorText.innerHTML = "add number/s.";
        goodPassword = false
    }
    if (!password) {
        passwordErrorText.innerHTML += "password cannot be empty";
        goodPassword = false
    }
    if (goodPassword) {
        passwordErrorText.style.color = "green";
        passwordErrorText.innerHTML = "password accepted.";
    }

});
