<?php
    /*Checks if User is already Logged In*/
    session_start();
    
    if (!isset($_SESSION["user"])) {
        header("Location: guestHome.php");
    }
    
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Courier - Home Page</title>
</head>
<body>
    <?php echo "Hello ".$_SESSION["user"]?><a href="logout.php"><button class="btn logoutBtn">Logout</button></a>
</body>
</html>