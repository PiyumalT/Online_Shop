passwordShowHiddenBtn.addEventListener("click", ()=>{
    if (passwordShowHiddenBtn.dataset.psHidden === "false") {
        passwordShowHiddenBtn.dataset.psHidden = "true";
        passwordShowHiddenBtn.innerText = "hide";
        passwordField.type = "text";
    } else {
        passwordShowHiddenBtn.dataset.psHidden = "false";
        passwordShowHiddenBtn.innerText = "view";
        passwordField.type = "password";
    }
    // console.log(passwordShowHiddenBtn.dataset.psHidden);
});