<?php
if (isset($_REQUEST['search'])) {
    $search = $_REQUEST['search'];
} else {
    $search = "";
}
include "connect.php";
$query = "SELECT * FROM item WHERE qty>0 AND (name LIKE '%$search%' OR description LIKE '%$search%' OR category LIKE '%$search%')";
$result = mysqli_query($connect, $query);
?>
<!DOCTYPE html>
<html>

<head>
    <title>Search Results</title>
    <link rel="stylesheet" href="css/nav_bar.css">
    <link href="./css/navigation.css" rel="stylesheet"/>
    <link crossorigin="anonymous" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.1/css/all.min.css"
          integrity="sha512-MV7K8+y+gLIBoVD59lQIYicR65iaqukzvf/nwasF0nqhPay5w/9lJmVM2hMDcnK1OnMGCdVK+iQrJ7lzPJQd1w=="
          referrerpolicy="no-referrer" rel="stylesheet"/>
    <link rel="stylesheet" href="./css/footer.css">
    <style>
        /* CSS for responsive layout */
        body {
            background-color: #cad3dc;
        }

        .search-results {
            margin: 0 auto;
            display: flex;
            justify-content: center;
        }

        .item {
            display: inline-block;
            width: 30%;
            margin: 2%;
            text-align: center;
            border: 3px solid black;
            border-radius: 5px;
            height: 100%;
            background-color: white;


        }

        a {
            text-decoration: none;
            color: inherit;
        }

        .item img {
            max-width: 200px;
            max-height: 200px;
            object-fit: cover;
        }

        #sort-by {
            text-align: right;
            padding-right: 3%;
        }

        .item-details {
            padding: 10px;

        }

        .item-details h2 {
            margin: 0;

        }

        .item-details p {
            margin: 0;

        }

        select {
            padding: 8px;
            font-size: 1.1em;
            border-radius: 4px;
            border: none;
            box-shadow: 0 0 2px rgba(0, 0, 0, 0.2);
            appearance: none;

        }

        @media (min-width: 900px) {
            .item {
                width: 20%;
            }
        }

        @media (min-width: 768px) and (max-width: 899px) {
            .item {
                width: 30%;
            }
        }

        @media (max-width: 767px) {
            .item {
                width: 50%;
            }
        }


    </style>
    <script>
        // JavaScript for sort functionality
        function sortBy(sortType) {
            // Code to sort search results
        }
    </script>
</head>

<body>
<div class="main">
    <div class="navbar">
        <div class="icon">
            <a href="home_page.php">
                <img alt="logo" id="img" src="./site_img/logo.png">
            </a>
        </div>

        <div class="search">
            <form action="search.php">
                <input class="search" id="search-bar" name="search" placeholder="Search Items" type="search">
                <button class="btn"><label for="search-bar"><i class="fa-solid fa-magnifying-glass"></i></label>
                </button>
        </div>

        <div class="menu">
            <ul>
                <li><a href="./cart.php">Cart</a></li>
                <li><a href="./account.php">Account</a></li>
                <li><a href="./logout.php">Logout</a></li>
            </ul>
        </div>

    </div>

    <div class="navbar2">
        <ul>
            <li>
                <div class="car">
                    <a href="./search.php?search=car">Car Part</a>
                </div>

            </li>

            <li>
                <div class="Motor">
                    <a href="./search.php?search=Motorcycle">Motorcycle Part</a>
                </div>
            </li>

            <li>
                <div class="other">
                    <a href="./search.php?search=other">Other Part</a>
                </div>
            </li>

            <li>
                <div class="tools">
                    <a href="./search.php?search=tools">Tools</a>
                </div>

            </li>

            <li>
                <div class="tyres">
                    <a href="./search.php?search=tyres">Tyres</a>
                </div>
            </li>

            <li>
                <div class="access">
                    <a href="./search.php?search=Accessories">Accessories</a>
                </div>
            </li>

        </ul>
    </div>
</div>
<br>
<br>
<div id="search-header">
    <h2>Search Results for: "<?php echo $search ?>"</h2>
    <div id="sort-by">
        <label>Sort by:</label>
        <select onchange="sortBy(this.value)">
            <option value="name">Name</option>
            <option value="price">Price</option>
        </select>
    </div>
</div>
<div id="search-results">
    <?php
    if (mysqli_num_rows($result) > 0) {

        while ($row = mysqli_fetch_array($result)) {
            ?>
            <a href="item_details.php?item_id=<?php echo $row["item_id"] ?>">
                <div class="item">
                    <img src="item_pics/<?php echo $row["item_id"] ?>.jpg" alt="<?php echo $row["name"] ?>">
                    <div class="item-details">
                        <h2><?php echo $row["name"] ?></h2>
                        <p>Rs.<?php echo $row["price"] ?></p>
                    </div>
                </div>
            </a>
            <?php
        }
    } else {
        echo "<h2> NO Results. check amazing deals</h2>";
        $query = "SELECT * FROM item WHERE qty>0 LIMIT 50";
        $result = mysqli_query($connect, $query);
        if (mysqli_num_rows($result) > 0) {

            while ($row = mysqli_fetch_array($result)) {
                ?>
                <a href="item_details.php?item_id=<?php echo $row["item_id"] ?>">
                    <div class="item">
                        <img src="item_pics/<?php echo $row["item_id"] ?>.jpg" alt="<?php echo $row["name"] ?>">
                        <div class="item-details">
                            <h2><?php echo $row["name"] ?></h2>
                            <p>Rs.<?php echo $row["price"] ?></p>
                        </div>
                    </div>
                </a>
                <?php
            }
        } else {
            echo "<h2> NO Results.</h2>";
        }
    }
    mysqli_close($connect);
    ?>
</div>
<footer style="margin-top: 100px">
    <div class="footer-container">
        <div class="footer-left">
            <nav>
                <a href="#">Contact Us</a>
                <ul>
                    <li><a href="#">FB</a></li>
                    <li><a href="#">YT</a></li>
                    <li><a href="#">Email</a></li>
                </ul>
            </nav>
        </div>
        <div class="footer-center">
            <nav>
                <a href="#">Shopping</a>
                <ul>
                    <li><a href="#">FAQ</a></li>
                    <li><a href="#">Payment Method</a></li>
                    <li><a href="#">User Guide</a></li>
                </ul>
            </nav>
        </div>
        <div class="footer-right">
            <nav>
                <a href="#">Company</a>
                <ul>
                    <li><a href="#">Terms and Conditions</a></li>
                    <li><a href="#">About</a></li>
                    <li><a href="#">Privacy Policy</a></li>
                </ul>
            </nav>
        </div>

    </div>
    <div class="bottom-tx">
        <p>Copyright © 2021 Nayantha Yasiru, Tharindu Piyumal, Nimesha Kavindi, Pathum Sanjana</p>
    </div>

</footer>
</body>

</html>
