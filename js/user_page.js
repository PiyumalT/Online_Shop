const inputs = document.getElementsByTagName("input");

function enterEditMode(e) {
    if (e.dataset.inEditMode === "false") {
        e.innerText = "Exit Edit Mode.";
        e.dataset.inEditMode = "true";

        for (let i = 0; i < inputs.length; i++) {
            inputs[i].disabled = false;
        }
    } else {
        e.innerText = "Edit Details.";
        e.dataset.inEditMode = "false";
        for (let i = 0; i < inputs.length; i++) {
            inputs[i].disabled = true;
        }
    }
}