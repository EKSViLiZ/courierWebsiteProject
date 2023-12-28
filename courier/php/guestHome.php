<?php
    /*Checks if User is already Logged In*/
    session_start();
    
    if (isset($_SESSION["user"])) {
        header("Location: home.php");
    }
    
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Courier Home Page</title>
</head>
<body>
    <p>Hello Guest</p><a href="start.php"><button class="btn registerBtn">Register</button></a>
</body>
</html>