<?php

include 'connect.php';

if(isset($_POST['register']))
{
    $name = $_POST['name'];
    $phone = $_POST['phone'];
    $email = $_POST['email'];
    $address = $_POST['address'];
    $password = $_POST['password'];

    $sql = "INSERT INTO customer(Name, Phone, Email, Address, Password)
    VALUES('$name','$phone','$email','$address','$password')";

    mysqli_query($conn, $sql);

    echo "<script>alert('Registration Successful');</script>";
}

?>

<!DOCTYPE html>
<html>

<head>
    <title>Customer Registration</title>
    <link rel="stylesheet" href="style.css">
</head>

<body>

<h1>Customer Registration</h1>

<div class="login-box">

<form method="POST">

<input type="text" name="name" placeholder="Enter Name" required>

<input type="text" name="phone" placeholder="Enter Phone" required>

<input type="email" name="email" placeholder="Enter Email" required>

<input type="text" name="address" placeholder="Enter Address" required>

<input type="password" name="password" placeholder="Enter Password" required>

<button type="submit" name="register">Register</button>

</form>

</div>

</body>

</html>