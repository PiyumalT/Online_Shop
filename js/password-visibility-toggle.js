const passwordVisibilityToggleBtn = document.getElementById("password-hide-show");
const passwordInputFiled = document.getElementById("password");
const passwordVisibilityToggleIcon = document.querySelector("#password-hide-show img");

passwordVisibilityToggleBtn.addEventListener("click", () => {
    if (passwordInputFiled.type === "password") {
        passwordInputFiled.type = "text";
        passwordVisibilityToggleIcon.src = "./icons/eye-slash-solid.svg";
    } else {
        passwordInputFiled.type = "password";
        passwordVisibilityToggleIcon.src = "./icons/eye-solid.svg";
    }
});
