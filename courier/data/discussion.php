<?php
    /*Checks if User is already Logged In*/
    session_start();
    
    if (!isset($_SESSION["user"])) {
        header("Location: ../member/home.php");
    }
    
    require_once "../index/index.php";
    
    if(isset($_GET['id'])){
        $id = $_GET['id'];
        
        $query = "SELECT d.*, t.header, u.username FROM `discussion` d, `thread` t, `user` u WHERE d.id = '$id' AND d.thread_id = t.id  AND d.byUser_id = u.id";
        $result = mysqli_query($conn, $query);
        $row=mysqli_fetch_assoc($result);
    }
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Discussion</title>
    
    <link rel="stylesheet" href="discussion.css">
</head>
<body>
    <div class="topPanel">
        <div class="logo">
            <a href="../userType/member/home.php" title="Go to home page"><img src="../media/logo/courier_logo_primary_alt.png" alt="Courier Logo" style="width: 120px"></a>
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
            <a href="../userType/member/home.php">
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
        <div class="threadContainer">
            <div class="threadInfo">
                <label for="discussionTitle" class="threadInfo title" title="<?php echo($row['discussion_header'])?>"><?php echo($row['discussion_header'])?></label><br>
                <a href="thread.php?id=<?php echo($row['thread_id'])?>" class="">
                    <label for="threadType" class="threadInfo info">Parent Thread: <?php echo($row['header'])?></label><br>
                </a>
                <a href="profile.php?id=<?php echo($row['byUser_id'])?>">
                    <label for="byUser " class="threadInfo info">By: <?php echo($row['username'])?></label><br>
                </a>
                <div class="lastActive"><?php echo($row['date_created']) ?></div>
                <div class="discriptionDiv">
                    <label for="discussionBody " class="threadInfo description"><?php echo($row['discussion_body'])?></label><br>
                </div>
            </div>
            <div class="postBtn">
                <a href="../create/newPost.php?id=<?php echo $id ?>" class="">
                    <button class="btn" type="submit" name="" style="margin-left: 85%">Reply</button>
                </a>
            </div>
        </div>
        
        <div class="catagoryFlex">
        <?php
            require_once "../index/index.php";

            //$query = "SELECT p.*, d.discussion_header, u.username FROM `post` p, `discussion` d, `username` u WHERE d.id = $id AND p.discussion_id = d.id AND p.byUser_id = u.id";
            $query = "SELECT p.*, u.username, d.discussion_header FROM `post` p, `user` u, `discussion` d WHERE d.id = $id AND p.byUser_id = u.id AND p.discussion_id = d.id";
            $result = mysqli_query($conn, $query);
            $row=mysqli_fetch_assoc($result);

            $cardAmount = mysqli_num_rows($result);
            if($cardAmount != 0){
                do{ 
        ?>
                <div class="cards">
                    <a href="profile.php?id=<?php echo($row['byUser_id'])?>">
                        <label for="byUser " class="threadInfo info">By: <?php echo($row['username'])?></label><br>
                    </a>
                    <div class="lastActive"><?php echo($row['date_created']) ?></div>
                    <div class="cardContent"><?php echo($row['post_body']) ?></div>
                </div>
            
                <?php
                }
            while($row = mysqli_fetch_assoc($result));
            }
            else{
                ?>
                <div class="nothingDiv">
                    <h class="header1">There are no replies yet.</h>
                    <!--<p class="p1">Be the first.</p>-->
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