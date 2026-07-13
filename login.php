<?php
session_start();
include 'connect.php';

if(isset($_POST['login']))
{
    $name = $_POST['name'];
    $password = $_POST['password'];

    $sql = "SELECT * FROM customer
    WHERE Name='$name' AND Password='$password'";

    $result = mysqli_query($conn, $sql);
    $row=mysqli_fetch_assoc($result);
    if(mysqli_num_rows($result) > 0)
    {
        $_SESSION['customer_name'] = $name;

        header("Location:index.php?id=".
       $row['Customer_ID']);
    }
    else
    {
        echo "<script>alert('Invalid Login');</script>";
    }
}
?>

<!DOCTYPE html>
<html>

<head>
    <title>Customer Login</title>
    <link rel="stylesheet" href="style.css">
</head>

<body>

<h1>Customer Login</h1>

<div class="login-box">

<form method="POST">

<input type="text" name="name" placeholder="Enter Name" required>

<input type="password" name="password" placeholder="Enter Password" required>

<button type="submit" name="login">Login</button>

</form>

</div>

</body>

</html>