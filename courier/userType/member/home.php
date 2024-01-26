<?php
    /*Checks if User is already Logged In*/
    session_start();
    
    if (!isset($_SESSION["user"])) {
        header("Location: ../registry/start.php");
    }
    
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Start a New Discussion!</title>
    
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
            <a href="../../data/profile.php?id=<?php echo($_SESSION['id'])?>">Profile</a>
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
            
            <!--
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
            -->
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
        <label for="mainHeader" class="primaryCategoryTitle">Threads</label>
        <div class="instruction">
            <p class="p1">To start a discussion, you must first select a thread and make one from there.</p>
        </div>
        <div class="catagoryFlex">
        <?php
            require_once "../../index/index.php";

            $query = "SELECT t.*, t_type.name, u.username FROM `thread` t, `thread_type` t_type, `user` u WHERE t.thread_type_id = t_type.id AND t.byUser_id = u.id ORDER BY header";
            $result = mysqli_query($conn, $query);
            $row=mysqli_fetch_assoc($result);

            //Troubleshooting problem, The first card don't show up. And if there's no more than 1 card, nothing shows up.
            $cardAmount = mysqli_num_rows($result);
            if($cardAmount != 0){
                do{ 
        ?>
                <a href="../../data/thread.php?id=<?php echo($row['id'])?>" class="">
                    <div class="cards">
                        <div class="discussionTitle" title="<?php echo($row['header'])?>"><?php echo($row['header'])?></div>
                        <div class="parentThread">Category: <?php echo($row['name']) ?></div>
                        <div class="userPoster">by: <?php echo($row['username']) ?></div>
                        <div class="lastActive"><?php echo($row['date_created']) ?></div>
                        <div class="cardContent"><?php echo($row['body']) ?></div>
                        <div class="readMore">Read More...</div>
                    </div>
                </a>
                
                <?php
                }
            while($row = mysqli_fetch_assoc($result));
            }
            else{
                ?>
                <div class="nothingDiv">
                    <h class="header1">There are no currently available threads.</h>
                    <p class="p1">Please retry again later or start your own thread.</p>
                </div>
                <?php
            }
        ?>
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