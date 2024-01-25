<?php
    /*Checks if User is already Logged In*/
    session_start();
    
    if (!isset($_SESSION["user"])) {
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
        
        <span class="profileNav" onclick="openNav()" style>
            <div class="userProfile" title="<?php echo($_SESSION['user'])?>">
                <label class="profile">ID: #<?php echo($_SESSION['id'])?></label>
                
                <img src="../../media/logo/profile.png" alt="profile icon" class="profileImage">
            </div>
        </span>
        <div id="mySidenav" class="sidenav">
            <a href="javascript:void(0)" class="closebtn" onclick="closeNav()">&times;</a>
            <label for="currentUser" class="currentUser"><?php echo($_SESSION['user'])?></label>
            <a href="../../data/profile.php">Profile</a>
            <a href="../../registry/logout.php">Logout</a>
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
            <a href="../../create/newDiscussion.php"><button class="createBtn">Start a Discussion</button></a>
            
            <p style="text-align: center;">OR</p>
            
            <a href="../../create/newThread.php"><button class="createBtn">Create New Thread</button></a>
        </div>
    </div>
    
    <div class="containerPrimary">
        <div class="catagory">
            <label class="primaryCategoryTitle">Followed Threads</label>
            
            <div class="catagoryFlex">
            <?php
                require_once "../../index/index.php";
                $query = 'SELECT * FROM `discussion` ORDER BY id DESC LIMIT 3';
                $result = mysqli_query($conn, $query);
                
                //$cardAmount is the number of rows in the table `post`.
                $cardAmount = mysqli_num_rows($result);
                if($cardAmount != 0){
                    $x = 0;
                    while($x < $cardAmount && $x < 3){
                        while($row = mysqli_fetch_assoc($result)){
            ?>          
                        <div class="cards">
                            <div class="discussionTitle"><?php echo($row['header'])?></div>
                            <div class="parentThread">Parent Thread</div>
                            <div class="userPoster">By User</div>
                            <div class="lastActive">Last Active</div>
                            <div class="cardContent">Card Content</div>
                            <div class="readMore">Read More...</div>
                        </div>
            <?php
                        }
                        $x++;
                    }
                        if($cardAmount > 2){
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
<script class="">
/* Set the width of the side navigation to 250px */
function openNav() {
document.getElementById("mySidenav").style.width = "250px";
}

/* Set the width of the side navigation to 0 */
function closeNav() {
document.getElementById("mySidenav").style.width = "0";
} 
</script>
</body>
</html>