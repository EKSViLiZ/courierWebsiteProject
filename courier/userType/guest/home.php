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
                    <a href="../../registry/start.php"><button class="registerBtn">Sign Up</button></a>
                </div>
                
                <div class="login">
                    <a href="../../registry/start.php"><button class="registerBtn">Login</button></a>
                </div>
            </div>
        </div>
        
        <div class="searchBarContainer">
            <input class="searchBar" type="text" name="searchBar" placeholder="Search">
        </div>
        
    </div>
    
    <div class="sidePanelLeft">

        
        <div class="navigationMenu">
            <a href="home.php">
                <div class="navigationBtn navigationSelected">
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
    
    <div class="containerPrimary">
        <div class="catagory">
            <label class="primaryCategoryTitle">Followed Threads</label>
            
            <div class="catagoryFlex">
            <?php
                $cardAmount = 0;
                if($cardAmount != 0){
                    $x = 0;
                    while($x < $cardAmount && $x < 3){
            ?>          
                        <div class="cards">
                            <div class="discussionTitle">Discussion Title</div>
                            <div class="parentThread">Parent Thread</div>
                            <div class="userPoster">By User</div>
                            <div class="lastActive">Last Active</div>
                            <div class="cardContent">Card Content</div>
                            <div class="readMore">Read More...</div>
                        </div>
            <?php
                        $x++;
                    }
                        if($cardAmount > 3){
            ?>
                            </div>
                            <a href="followedThreads.php"><button class="showMoreBtn">Show More</button></a>
            <?php
                        }
                }
                else{
                    ?>
                    <div class="nothingDiv">
                        <h class="header1">There is no currently available threads.</h>
                        <p class="p1">Please retry again later or start your own thread.</p>
                    </div>
                    <?php
                }
            ?>    
        </div>
        
        <div class="catagory">
            <label class="primaryCategoryTitle">Visited Discussions</label>

            <div class="cards">
            </div>
        </div>
        
        <div class="catagory">
            <label class="primaryCategoryTitle">Popular Threads</label>

            <div class="cards">
                <label class="discussionTitle"></label>
                <label class="parentThread"></label>
                <label class="lastActive"></label>
                <label class="cardContent"></label>
            </div>
        </div>
        
        <div class="catagory">
            <label class="primaryCategoryTitle">Recent Discussions</label>

            <div class="cards">
            </div>
        </div>
    </div>
    
    <div class="footer">
    </div>
</body>
</html>