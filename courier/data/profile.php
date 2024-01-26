<?php
    /*Checks if User is already Logged In*/
    session_start();
    
    if (!isset($_SESSION["user"])) {
        header("Location: ../registry/start.php");
    }
    
    require_once "../index/index.php";
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Profile - <?php echo $_SESSION['user']?></title>
    
    <link rel="stylesheet" href="profile.css">
    
</head>
<body>
    <div class="topPanel">
        <div class="logo">
            <a href="../userType/guest/home.php" title="Go to home page"><img src="../media/logo/courier_logo_primary_alt.png" alt="Courier Logo" style="width: 120px"></a>
        </div>
        
        <span class="profileNav" onclick="openNav()" style>
            <div class="userProfile" title="<?php echo($_SESSION['user'])?>">
                <label class="profile">ID: #<?php echo($_SESSION['id'])?></label>
                
                <img src="../media/logo/profile.png" alt="profile icon" class="profileImage">
            </div>
        </span>
        <div id="mySidenav" class="sidenav">
            <a href="javascript:void(0)" class="closebtn" onclick="closeNav()">&times;</a>
            <label for="currentUser" class="currentUser"><?php echo($_SESSION['user'])?></label>
            <a href="../data/profile.php?id=<?php echo($_SESSION['id'])?>">Profile</a>
            <a href="../registry/logout.php">Logout</a>
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
            <a href="../create/newDiscussion.php"><button class="createBtn">Start a Discussion</button></a>
            
            <p style="text-align: center;">OR</p>
            
            <a href="../create/newThread.php"><button class="createBtn">Create New Thread</button></a>
        </div>
    </div>
    <div class="container">
        <?php
            if(isset($_GET['id'])){
                $id = $_GET['id'];
                
                $query = "SELECT u.*, c.name FROM  `user` u, `country` c WHERE u.id = '$id' AND u.country_id = c.id";
                $result = mysqli_query($conn, $query);
                $row=mysqli_fetch_assoc($result);
            }
        ?>
        <div class="profileInfoMain">
            <img src="../media/logo/profile_black.png" alt="" class="profileImagePrimary">
            <label for="name" class="profileInfo name"><?php echo($row['username'])?></label>
            <label for="id" class="profileInfo info">#<?php echo($row['id'])?></label><br>
            <label for="country" class="profileInfo info"><?php echo($row['name'])?></label><br>
            <button class="followBtn"><img src="../media/logo/follow_user.png" alt="" class="followImageIcon"></button>
        </div>
        <div class="profileInfoSecondary">
            <div class="infoDetail">
                <label for="joinedOn" class="profileInfo info2">Joined on: </label><br>
                <label for="joinedOn" class="profileInfo info2">Birthdate: </label><br>
                <label for="joinedOn" class="profileInfo info2">Followers: </label><br>
                <label for="joinedOn" class="profileInfo info2">Following: </label><br>
                
            </div>
            <div class="infoData">
                <label for="joinedOnData" class="profileInfo info"><?php echo($row['date_created'])?></label><br>
                <label for="joinedOnData" class="profileInfo info">Unknown</label><br>
                <label for="joinedOnData" class="profileInfo info">0</label><br>
                <label for="joinedOnData" class="profileInfo info">0</label><br>
            </div>
        </div>
        <div class="profileRecentPost">
            <label for="" class="primaryCategoryTitle">Recent Discussions:</label>
            <div class="flexCards">
                <?php
                    require_once "../index/index.php";

                    //$query = "SELECT t.date_created AS thread_date_created, t.*, t_type.name, u.* FROM `thread` t, `thread_type` t_type, `user` u WHERE t_type.id = t.thread_type_id AND t.byUser_id = u.id AND u.id = $id ORDER BY t.id DESC LIMIT 3";
                    $query = "SELECT d.date_created AS discussion_date_created, d.*, t.header, u.username FROM `discussion` d, `thread` t, `user` u WHERE u.id = $id AND d.thread_id = t.id AND d.byUser_id = u.id ORDER BY d.id DESC LIMIT 3";
                    $result = mysqli_query($conn, $query);
                    $row=mysqli_fetch_assoc($result);

                    $cardAmount = mysqli_num_rows($result);
                    if($cardAmount != 0){
                        do{ 
                ?>
                        <a href="discussion.php?id=<?php echo($row['id'])?>" class="">
                            <div class="cards">
                                <div class="discussionTitle" title="<?php echo($row['discussion_header'])?>"><?php echo($row['discussion_header'])?></div>
                                <div class="parentThread">Parent Thread: <?php echo($row['header']) ?></div>
                                <div class="userPoster">by: <?php echo($row['username']) ?></div>
                                <div class="lastActive"><?php echo($row['discussion_date_created']) ?></div>
                                <div class="cardContent"><?php echo($row['discussion_body']) ?></div>
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
                            <h class="header1">This user has yet to make any Discussion.</h>
                        </div>
                    <?php
                }
                ?>
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