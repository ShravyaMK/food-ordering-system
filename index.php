<?php
include 'connect.php';

$sql = "SELECT food.Food_ID,
food.Food_Name,
food.Price,
restaurant.Restaurant_Name
FROM food
JOIN restaurant
ON food.Restaurant_ID = restaurant.Restaurant_ID";

$result = mysqli_query($conn, $sql);
?>

<!DOCTYPE html>
<html>

<head>
    <title>Food Ordering System</title>
    <link rel="stylesheet" href="style.css">
</head>

<body>

    <h1>Food Ordering System</h1>

    <div class="restaurant-container">

        <?php
        while($row = mysqli_fetch_assoc($result))
        {
        ?>

        <div class="food-card">

            <h2><?php echo $row['Restaurant_Name']; ?></h2>

            <img src="images/<?php echo $row['Food_Name']; ?>.jpg">

            <h3><?php echo $row['Food_Name']; ?></h3>

            <p>Price: ₹<?php echo $row['Price']; ?></p>

            <a href="order.php?id=<?php echo
             $row['Food_ID']; ?>">
                <button>Order Now</button>
            </a>

        </div>

        <?php
        }
        ?>

    </div>

</body>

</html>