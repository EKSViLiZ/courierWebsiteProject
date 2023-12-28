<?php
    session_start();
    if (isset($_SESSION["user"])) {
        header("Location: home.php");
    }

    require_once "../php/index.php";

    if (isset($_POST["submit"])) {
        $username = $_POST["username"];
        $email = $_POST["email"];
        $password = $_POST["password"];
        $repeatPassword = $_POST["repeatPassword"];

        $passwordHash = password_hash($password, PASSWORD_DEFAULT);
        
        /*Some code needed to check if the email already exist in the database*/
        $sql = "SELECT * FROM user WHERE email = '$email'";
        $result = mysqli_query($conn, $sql);
        $rowcount = mysqli_num_rows($result);
        
        if (empty($username) OR empty($email) OR empty($password) OR empty($repeatPassword)) {
            echo "<div class='alert alertError alertPrimaryCenter'>All fields are required!</div>";
        } else if (strlen($password) < 8) {
            echo "<div class='alert alertError alertPrimaryCenter'>Password must atleast have 8 characters minimum!</div>";
        } else if ($rowcount>0) {
            echo "<div class='alert alertError alertPrimaryCenter'>Email already exist!</div>";
        } else {
        
            $sql = "INSERT INTO user (username, email, password) VALUES (? ,? ,?)";
            $stmt = mysqli_stmt_init($conn);
            $prepareStmt = mysqli_stmt_prepare($stmt, $sql);
            if ($prepareStmt) {
                mysqli_stmt_bind_param($stmt, "sss", $username, $email, $passwordHash);
                mysqli_stmt_execute($stmt);
                echo ("<div class='alert alertSuccess alertPrimaryCenter'>Registered Successfully.</div>");
            } else {
                die("<div class='alert alertError alertPrimaryCenter'>Something went wrong!</div>");
            }
        }
    }
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Courier - Signup Now!</title>

    <link rel="stylesheet" href="../css/signup.css">
</head>
<body>

    <div class="topPanel"></div>

    <!--Added Blank Container so that the "backBtn" can stay aligned with "container" regardless of magnification-->
    <div class="blankContainer">
    
        <form class="container" action="signup.php" method="post">
        
            <div class="logo">
                <img src="../img/courier_logo.png" alt="Courier Logo" style="width: 185px">
            </div>
            
            <p class="header1">Sign Up</p>

            <label class="header2" for="username">Username:</label><br>
            <input class="containerInput" type="text" id="username" name="username"><br>

            <label class="header2" for="email">Email Address:</label><br>
            <input class="containerInput" type="email" id="email" name="email"><br>

            <label class="header2" for="password">Password:</label><br>
            <input class="containerInput" type="password" id="password" name="password" placeholder="Must atleast contain 8 characters minimum.">

            <div class="showPassword">
                <input type="checkbox" onclick="showPassword()">Show Password<br>
            </div>

            <label class="header2" for="repeatPassword">Repeat Password:</label><br>
            <input class="containerInput" type="password" id="repeatPassword" name="repeatPassword"><br>


            <input class="btn signupBtn" type="submit" value="Sign Up" name="submit">
            
            <div class="login">
                Already have an Account? <a href="login.php"><u>Login!</u></a>
            </div>

        </form>
        
        <a href="start.php"><button onclick="start.php" class="btn backBtn">Back</button></a>
        
    </div>
    

    
    <div class="footer"></div>

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