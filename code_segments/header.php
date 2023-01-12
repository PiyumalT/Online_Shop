<?php

function create_header(): void
{
    session_start();
    $user_data = "something";
    $logged_in = false;
    if (isset($_SESSION[$user_data])) {
        $logged_in = true;
        // User is logged in
    }
//    else {
//    // No one is logged in (guest)
//    }
    ?>
    <button class="menu-icon" aria-expanded="false">menu icon</button>
    <nav>
        <div class="logo">LOGO</div>
        <div class="search_box">
            <label for="search_bar"></label>
            <input type="text" name="search_bar" id="search_bar">
            <i class="search-icon">S</i>
        </div>
        <div class="cart">cart</div>
        <div class="account">account</div>
    </nav>
    <script src="./js/nav_bar.js"></script>
    <script src="../js/nav_bar.js"></script>
    <?php
}

?>