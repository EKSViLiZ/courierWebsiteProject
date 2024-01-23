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
    <title>Create a New Thread!</title>
    
    <link rel="stylesheet" href="newDiscussion.css">
</head>
<body>
    <div class="topPanel">
        <div class="logo">
            <a href="../userType/guest/home.php" title="Go to home page"><img src="../media/logo/courier_logo_primary_alt.png" alt="Courier Logo" style="width: 120px"></a>
        </div>
        
        <div class="userProfile">
            <label class="guestStatus">Viewing as Guest</label>
            
                
            <div class="registry">
                <div class="signup">
                    <a href="../registry/start.php"><button class="registerBtn">Sign Up</button></a>
                </div>
                
                <div class="login">
                    <a href="../registry/start.php"><button class="registerBtn">Login</button></a>
                </div>
            </div>
        </div>
        
        <div class="searchBarContainer">
            <input class="searchBar" type="text" name="searchBar" placeholder="Search">
        </div>
        
    </div>
    
    <div class="sidePanelLeft">

        <div class="navigationMenu">
            <a href="../userType/guest/home.php">
                <div class="navigationBtn navigationUnselected">
                    Home
                </div>
            </a>
            
            <a href="followed.php">
                <div class="navigationBtn navigationUnselected">
                    Followed
                </div>
            </a>
            
            <a href="visited.php">
                <div class="navigationBtn navigationUnselected">
                    Visited
                </div>
            </a>
            
            <a href="popular.php">
                <div class="navigationBtn navigationUnselected">
                    Popular
                </div>
            </a>
            
            <a href="recent.php">
                <div class="navigationBtn navigationUnselected">
                    Recent
                </div>
            </a>
        </div>
        
    </div>
    
    <div class="sidePanelRight">
        <div class="containerSecondary">
            <label class="navigationBtn relevantBoards">Relevant Boards</label>
        </div>
        
        <div class="createPostContainer">
            <a href="newDiscussion.php"><button class="createBtn">Start a Discussion</button></a>
            
            <p style="text-align: center;">OR</p>
            
            <a href="newThread.php"><button class="createBtn">Create New Thread</button></a>
        </div>
    </div>
    
    <form action="newDiscussion.php" class="container" method="post">  
        
    </form>
    
    <div class="footer">
    </div>
</body>
</html>