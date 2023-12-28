<?php 
    /*Checks if User is already Logged In*/
    session_start();
    
    if (isset($_SESSION["user"])) {
        header("Location: home.php");
    }
    
    require_once "../php/index.php";
    
    if (isset($_POST["login"])) {
        $email = $_POST["email"];
        $password = $_POST["password"];
        
        $sql = "SELECT * FROM user WHERE email = '$email'";
        $result = mysqli_query($conn, $sql);
        $user = mysqli_fetch_array($result, MYSQLI_ASSOC);
        
        if (empty($email) OR (empty($password))) {
            echo "<div class='alert alertError alertPrimaryCenter'>All fields are required!</div>";
        } else if ($user){
            if (password_verify($password, $user["password"])) {
                session_start();
                $_SESSION["user"] = $user["username"];
                header("Location: home.php");
                die();
            } else {
                echo "<div class='alert alertError alertPrimaryCenter'>Password does not match!</div>";
            }
        } else {
            echo "<div class='alert alertError alertPrimaryCenter'>Email does not match!</div>";
        }
    }
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Courier - Login Page</title>

    <link rel="stylesheet" href="../css/login.css">
</head>
<body>

    <div class="topPanel"></div>
    
    <div class="blankContainer">
    
        <form class="container" action="login.php" method="post">
        
            <div class="logo">
                <a href="home.php" title="Go to home page"><img src="../img/courier_logo.png" alt="Courier Logo" style="width: 185px"></a>
            </div>
            
            <p class="header1">Login</p>
            
            <label class="header2" for="email">Email Address:</label><br>
            <input class="containerInput" type="email" id="email" name="email"><br>

            <label class="header2" for="password">Password:</label><br>
            <input class="containerInput" type="password" id="password" name="password"><br>
            
            <div class="showPassword">
                <input type="checkbox" onclick="showPassword()">Show Password<br>
            </div>

            <input  class="btn loginBtn" type="submit" value="Login" name="login">

            <div class="register">
                Don't have an account? <a href="signup.php"><u>Register Now!</u></a>
            </div>
            
        </form>
        
        <a href="start.php"><button onclick="start.php" class="btn backBtn">Back</button></a>
        
    </div>
    
    <script>
        function showPassword() {
        var x = document.getElementById("password");
        if (x.type === "password") {
            x.type = "text";
        } else {
            x.type = "password";
        }
        }
    </script>

</body>
</html>