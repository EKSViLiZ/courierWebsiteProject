<?php
    /*Checks if User is already Logged In*/
    session_start();
    
    if (!isset($_SESSION["user"])) {
        header("Location: ../member/home.php");
    }
    
    require_once "../index/index.php";
    
    if(isset($_GET['id'])){
        $id = $_GET['id'];
        
        $query = "SELECT t.*, t_t.name, u.username FROM  `thread` t, `thread_type` t_t, `user` u WHERE t.id = '$id' AND t.byUser_id = u.id AND t.thread_type_id = t_t.id";
        $result = mysqli_query($conn, $query);
        $row=mysqli_fetch_assoc($result);
    }
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Thread</title>
    
    <link rel="stylesheet" href="thread.css">
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
            <a href="../create/newDiscussion2.php?id=<?php echo("$id")?>"><button class="createBtn">Start a Discussion</button></a>
            
            <p style="text-align: center;">OR</p>
            
            <a href="../create/newThread.php"><button class="createBtn">Create New Thread</button></a>
        </div>
    </div>
    
    <div class="container">
        <div class="threadInfo">
            <label for="threadTitle" class="threadInfo title"><?php echo($row['header'])?></label><br>
            <label for="threadType" class="threadInfo info">Category: <?php echo($row['name'])?></label><br>
            <label for="byUser " class="threadInfo info">By: <?php echo($row['username'])?></label><br>
            <div class="discriptionDiv">
                <label for="threadDescription " class="threadInfo description"><?php echo($row['body'])?></label><br>
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