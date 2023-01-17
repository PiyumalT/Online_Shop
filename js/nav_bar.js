// nav bar toggle
const menuIcon = document.querySelector(".menu-icon");
const navElement = document.querySelector("nav");
menuIcon.addEventListener("click", () => {
    if (menuIcon.ariaExpanded === "false") {
        menuIcon.ariaExpanded = "true";
        navElement.style.transform = "translateX(0%)";
    } else {
        menuIcon.ariaExpanded = "false";
        navElement.style.transform = "translateX(-100%)";
    }

});

