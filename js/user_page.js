const inputs = document.getElementsByTagName("input");

function triggerEditMode(e) {
    if (e.dataset.inEditMode === "false") {
        e.innerText = "Exit Edit Mode.";
        e.dataset.inEditMode = "true";
        document.querySelector(".button-section").style.display = "flex";

        for (let i = 0; i < inputs.length; i++) {
            inputs[i].disabled = false;
        }
        document.querySelector("label[for=\"re-type-password\"]").classList.remove("hide");
    } else {
        e.innerText = "Edit Details.";
        e.dataset.inEditMode = "false";
        for (let i = 0; i < inputs.length; i++) {
            inputs[i].disabled = true;
        }
        document.querySelector("label[for=\"re-type-password\"]").classList.add("hide");
        document.querySelector(".button-section").style.display = "none";
        ResetDetails();
    }
}

function ResetDetails() {
    document.forms[0].reset();
}

function submitDetails() {
    document.forms[0].submit();
}