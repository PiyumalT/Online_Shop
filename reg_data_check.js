function validateEmail() {
    var email = document.getElementById("email").value;
    var emailError = document.getElementById("emailError");
    var emailRegex = /^[a-zA-Z0-9._-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,4}$/;
  
    if (email == "") {
      emailError.textContent = "Email is required.";
      document.getElementById("email").style.color = "red";
    } else if (!emailRegex.test(email)) {
      emailError.textContent = "Invalid email format.";
      document.getElementById("email").style.color = "red";
    } else {
      emailError.textContent = "";
      document.getElementById("email").style.color = "green";
      return true;
    }
    return false;
}


function validatePassword() {
    var password = document.getElementById("password").value;
    var passwordError = document.getElementById("passwordError");
  
    if (password == "") {
      passwordError.textContent = "Password is required.";
      document.getElementById("password").style.color = "red";
    } else if (password.length < 6) {
      passwordError.textContent = "Password must be at least 6 characters.";
      document.getElementById("password").style.color = "red";
    } else {
      passwordError.textContent = "";
      document.getElementById("password").style.color = "green";
      return true;
    }
    return false;
  }
  
  function validateConfirmPassword() {
    var password = document.getElementById("password").value;
    var confirmPassword = document.getElementById("confirmPassword").value;
    var confirmPasswordError = document.getElementById("confirmPasswordError");
  
    if (confirmPassword == "") {
      confirmPasswordError.textContent = "Confirm password is required.";
      document.getElementById("confirmPassword").style.color = "red";
    } else if (confirmPassword != password) {
      confirmPasswordError.textContent = "Confirm password does not match password.";
      document.getElementById("confirmPassword").style.color = "red";
    } else {
      confirmPasswordError.textContent = "";
      document.getElementById("confirmPassword").style.color = "green";
      return true;
    }
    return false;

}

function validate_all(){
    if(validateEmail()){
        if (validatePassword()){
            if(validateConfirmPassword()){
                return true;
            }
        }
    }
    return false;
}