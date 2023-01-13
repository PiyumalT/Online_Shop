const form = document.querySelector('form');
const completePaymentButton = document.querySelector('button#complete-payment');

form.addEventListener('submit', handleFormSubmission);

function handleFormSubmission(event) {
  event.preventDefault();
  if (form.checkValidity() === false) {
    // Handle invalid form data.
  } else {
    completePaymentButton.textContent = 'Making payment...';
    completePaymentButton.disabled = 'true';
    setTimeout(() => {warn('Made payment!');}, 500);
  }
}
// Get the expiration date input element
// Get the expiration date input element
let expirationDate = document.getElementById("cc-exp");

function addSlash() {
    let input = document.getElementById("cc-exp").value;
    if (input.length > 1 && input.length <3) {
        input = input.substring(0,2) + "/" + input.substring(2);
        document.getElementById("cc-exp").value = input;
    }
}
function addSpace() {
    let input = document.getElementById("cc-number").value;
    let isValid = /^[\d\s]+$/.test(input); //check if input is number or space
    if (isValid) {
        if (input.length==4 ||input.length==9 || input.length==14 ) {
            input = input.substring(0,input.length) + " " ;
            document.getElementById("cc-number").value = input;}
    }else{
        warn("Enter numbers and spaces only");
        input = input.slice(0, -1); // remove last character
        document.getElementById("cc-number").value = input;
    }
    if (input.length>19){
        input = input.slice(0, -1); // remove last character
        document.getElementById("cc-number").value = input;
    }
}


function isExpirationDateValid() {
    // Get the current date
    let currentDate = new Date();

    // Get the entered expiration date
    let enteredDate = new Date(document.getElementById("cc-exp").value);

    // Check if the entered date is in the future
    if (enteredDate > currentDate){
        return true;
    } else {
        return false;
    }
}
function validateAll() {
    let ccNumber = document.getElementById("cc-number").value;
    let ccName = document.getElementById("cc-name").value;
    let ccExp = document.getElementById("cc-exp").value;
    let ccCsc = document.getElementById("cc-csc").value;
    let isValid = true;

    if (!ccNumber) {
        warn("Please enter a credit card number");
        isValid = false;
    }
    if (!ccName) {
        warn("Please enter the name on the card");
        isValid = false;
    }
    if (!ccExp) {
        warn("Please enter the expiration date");
        isValid = false;
    }
    if (!ccCsc) {
        warn("Please enter the security code");
        isValid = false;
    }
    if (ccExp && !isExpirationDateValid(ccExp)) {
        warn("Invalid Expiration Date");
        isValid = false;
    }
    return isValid;
}

function warn(msg){
    var pError = document.getElementById("pError");
    pError.textContent = msg;
}
