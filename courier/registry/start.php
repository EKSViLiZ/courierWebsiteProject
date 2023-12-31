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

    <title>Welcome to Courier</title>

    <link rel="stylesheet" href="start.css">

</head>
<body>
    <div class="topPanel"></div>

    <div class="container">
            <div class="logo">
                <a href="../userType/guest/home.php" title="Go to home page"><img src="../media/logo/courier_logo_primary.png" alt="Courier Logo" style="width: 185px"></a>
            </div>
        <div class="aboutUs">
            <p>About Us</p>
        </div>

        <div class="aboutUsInfo">
            <p>
                <b>Courier</b> is made as an online discussion board targeted towards groups of users 
                who share a common interests and hobbies.
            </p>
            <p>
                Here users are free to start a topic, take part in an existing conversation, argue in a civil manner,
                 and they are free to use this platform as a means to share there ideas.
            </p>
        </div>

        <div class="registryMsg">
            <p>
                While you can access the website without needing to login, 
                <br>
                Most actions would require an Account.
            </p>
        </div>
        
        <div class="newToCourier">
            <p><b>New to Courier?</b></p>
        </div>

        <a href="signup.php"><button class="btn signupBtn">Sign Up</button></a>

        <div class="orDivide">
            <p>OR</p>
        </div>

        <div class="alreadyRegistered">
            <p><b>Already registered?</b></p>
        </div>

        <a href="login.php"><button class="btn loginBtn">Login</button></a>

        <div class="orDivide">
            <p>OR</p>
        </div>

        <p class="continueAsGuest"><b>Continue</b></p>

        <a href="../userType/guest/home.php"><button class="btn guestBtn">As Guest</button></a>
    </div>

    <div class="footer"></div>
</body>
</html>