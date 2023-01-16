<?php
if (isset($_REQUEST['search'])){
    $search = $_REQUEST['search'];
}
else{
    $search = " ";
}
include "connect.php";
$query = "SELECT * FROM item WHERE qty>0 AND (name LIKE '%$search%' OR description LIKE '%$search%' OR category LIKE '%$search%')";
$result = mysqli_query($connect, $query);
?>
<!DOCTYPE html>
<html>

<head>
    <title>Search Results</title>
    <style>
    /* CSS for responsive layout */
    .search-results {
    margin: 0 auto;
    display: flex;
    justify-content: center;
}

    .item {
        display: inline-block;
        width: 30%;
        margin: 2%;
        text-align:center;
        
    }
    a{
        text-decoration:none;
        color:inherit;
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
    .item-details{
        padding:10px;
        
    }
    .item-details h2{
        margin:0;
        
    }
    .item-details p{
        margin:0;
        
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
    .item{
        width: 20%;
    }
    }
    @media (min-width: 768px) and (max-width: 899px) {
    .item{
        width: 30%;
    }
    }
    @media (max-width: 767px) {
    .item{
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

            while($row = mysqli_fetch_array($result))
            {
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
        }
        else{
            echo "<h2> NO Results </h2>";
        }
        mysqli_close($connect);
        ?>
    </div>
</body>

</html>
