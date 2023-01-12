<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Home Page</title>
    <link rel="stylesheet" href="css/reset.css">
    <link rel="stylesheet" href="css/home_page.css">
</head>
<body>
Popular
<div class="container">
    <button class="handle left hidden"></button>
    <div class="slider">
        <img src="https://via.placeholder.com/200?text=1" alt="">
        <img src="https://via.placeholder.com/200?text=2" alt="">
        <img src="https://via.placeholder.com/200?text=3" alt="">
        <img src="https://via.placeholder.com/200?text=4" alt="">
        <img src="https://via.placeholder.com/200?text=5" alt="">
    </div>
    <button class="handle right"></button>
</div>
Latest
<div class="container">
    <button class="handle left hidden"></button>
    <div class="slider">
        <img src="https://via.placeholder.com/200?text=1" alt="">
        <img src="https://via.placeholder.com/200?text=2" alt="">
        <img src="https://via.placeholder.com/200?text=3" alt="">
        <img src="https://via.placeholder.com/200?text=4" alt="">
        <img src="https://via.placeholder.com/200?text=5" alt="">
    </div>
    <button class="handle right"></button>
</div>
<script>
    let sliderChanged = true;
    const leftHandles = document.querySelectorAll(".handle.left");
    const rightHandles = document.querySelectorAll(".handle.right");
    const sliders = document.querySelectorAll(".slider");

    // setInterval(() => {
    //     if (sliderChanged) {
    //         for (const slider of sliders) {
    //             slider.style.transform = "translateX(0%)";
    //         }
    //         sliderChanged = !sliderChanged;
    //
    //         for (let i = 0; i < leftHandles.length; i++) {
    //             rightHandles[i].classList.remove("hidden");
    //             leftHandles[i].classList.add("hidden");
    //         }
    //
    //         // rightHandle.classList.remove("hidden");
    //         // leftHandle.classList.add("hidden");
    //     }
    //     else {
    //         for (const slider of document.querySelectorAll(".slider")) {
    //             slider.style.transform = "translateX(-100%)";
    //         }
    //         sliderChanged = !sliderChanged;
    //         for (let i = 0; i < leftHandles.length; i++) {
    //             rightHandles[i].classList.add("hidden");
    //             leftHandles[i].classList.remove("hidden");
    //         }
    //         // rightHandle.classList.add("hidden");
    //         // leftHandle.classList.remove("hidden");
    //     }
    // }, 3000)


    for (const container of document.querySelectorAll(".container")) {
        const leftHandle = container.querySelector(".handle.left");
        const rightHandle = container.querySelector(".handle.right");
        leftHandle.addEventListener("click", e => {
            container.querySelector(".slider").style.transform = "translateX(0%)";
            rightHandle.classList.remove("hidden");
            leftHandle.classList.add("hidden");
        });
        rightHandle.addEventListener("click", e => {
            container.querySelector(".slider").style.transform = "translateX(-100%)";
            rightHandle.classList.add("hidden");
            leftHandle.classList.remove("hidden");
        });
    }

</script>
</body>
</html>