<?php
    /*Checks if User is already Logged In*/
    session_start();
    
    if (isset($_SESSION["user"])) {
        header("Location: ../member/home.php");
    }
    
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Courier - Home Page</title>
    
    <link rel="stylesheet" href="home.css">
</head>
<body>
    <div class="topPanel">
        <div class="logo">
            <a href="home.php" title="Go to home page"><img src="../../media/logo/courier_logo_primary_alt.png" alt="Courier Logo" style="width: 120px"></a>
        </div>
        
        <div class="userProfile">
            <label class="guestStatus">Viewing as Guest</label>
            
                
            <div class="registry">
                <div class="signup">
                    <a href="../../registry/start.php"><button class="btn registerBtn">Sign Up</button></a>
                </div>
                
                <div class="login">
                    <a href="../../registry/start.php"><button class="btn registerBtn">Login</button></a>
                </div>
            </div>
        </div>
        
        <div class="searchBarContainer">
            <input class="searchBar" type="text" name="searchBar" placeholder="Search">
        </div>
        
    </div>
    
    <div class="sidePanelLeft">

        
        <div class="navigationMenu">
            <label class="navigationLabel">Home</label>
            <label class="navigationLabel">Followed</label><br>
            <label class="navigationLabel">Visited</label><br>
            <label class="navigationLabel">Popular</label><br>
            <label class="navigationLabel">Recent</label><br>
        </div>
        
    </div>
    
    <div class="containerPrimary">
        <div class="catagory">
            <label>Followed Threads</label>

            <div class="cards">
            </div>
        </div>
        
        <div class="catagory">
            <label>Visited Discussions</label>

            <div class="cards">
            </div>
        </div>
        
        <div class="catagory">
            <label>Popular Threads</label>

            <div class="cards">
            </div>
        </div>
        
        <div class="catagory">
            <label>Recent Discussions</label>

            <div class="cards">
            </div>
        </div>
    </div>
    
    <div class="sidePanelRight">
        <div class="containerSecondary">
            <label class="navigationLabel">Relevant Boards</label>
        </div>     
    </div>
    
    <div class="footer">
    </div>
</body>
</html>