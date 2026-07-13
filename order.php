<?php

include 'connect.php';
$id = $_GET['id'];

$food_query = "SELECT * FROM food WHERE Food_ID='$id'";
$food_result = mysqli_query($conn, $food_query);

$food_row = mysqli_fetch_assoc($food_result);

$price = $food_row['Price'];
$food_name = $food_row['Food_Name'];

if(isset($_POST['submit']))
{
    $quantity = $_POST['quantity'];
    $total=$price*$quantity;

    $sql = "INSERT INTO orders(Customer_ID, Food_ID, Quantity, Total_Amount)
    VALUES('1','$id','$quantity','$total')";

    mysqli_query($conn, $sql);

    echo "<script>alert('Order Placed Successfully');</script>";
}

?>

<!DOCTYPE html>
<html>

<head>
    <title>Place Order</title>
    <link rel="stylesheet" href="style.css">
</head>

<body>

    <h1>Place Your Order</h1>

    <div class="login-box">

        <form method="POST">
            <h2><?php echo $food_name; ?></h2>

            <h3>Price: ₹<?php echo $price; ?></h3> 

            <input type="number" name="quantity" placeholder="Enter Quantity">

            <button type="submit" name="submit">Place Order</button>

        </form>

    </div>

</body>

</html>