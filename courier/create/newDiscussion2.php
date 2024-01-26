<?php
    /*Checks if User is already Logged In*/
    session_start();
    
    if (!isset($_SESSION["user"])) {
        header("Location: ../usertype/guest/home.php");
    }
    
    require_once "../index/index.php";
    
    if(isset($_GET['id'])){
    $id = $_GET['id'];
    
    $query = "SELECT * FROM  `thread` WHERE id = '$id'";
    $result = mysqli_query($conn, $query);
    $row=mysqli_fetch_assoc($result);
    }
    
    $parentThreadHeader = $row['header'];
    
    if (isset($_POST["submit"])) {
        $title = $_POST["title"];
        $content = $_POST["content"];
        $byUser = $_SESSION['id'];
        $dateCreated = date('Y-m-d H:i:s');
        $thread_id = $id;
        
        $sql = "INSERT INTO `discussion` (discussion_header, discussion_body, thread_id, byUser_id, lastActive, date_created) VALUES (? ,? ,? ,? ,? ,?)";
        $stmt = mysqli_stmt_init($conn);
        $prepareStmt = mysqli_stmt_prepare($stmt, $sql);
        
        if (!empty($title)){
            if (!empty($content)){
                if ($prepareStmt) {
                    mysqli_stmt_bind_param($stmt, "ssiiss", $title, $content, $thread_id, $byUser, $dateCreated, $dateCreated);
                    mysqli_stmt_execute($stmt);
                    $query = "SELECT * FROM `discussion` ORDER BY id DESC LIMIT 1";
                    $result = mysqli_query($conn, $query);
                    $row = mysqli_fetch_assoc($result);
                    $discussion_id = ($row['id']);
                    header("Location: ../data/discussion.php?id=$discussion_id");
                } else {
                    die("<div class='alert alertError alertPrimaryCenter'>Something went wrong!</div>");
                }
            } else {
                echo ("<div class='alert alertError alertPrimaryCenter'>*Content must not be empty*</div>");
            }
        } else {
            echo ("<div class='alert alertError alertPrimaryCenter'>*Title must not be empty*</div>");
        }
    }
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Start a New Discussion!</title>
    
    <link rel="stylesheet" href="newDiscussion2.css">
    
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
            <a href="newDiscussion.php"><button class="createBtn">Start a Discussion</button></a>
            
            <p style="text-align: center;">OR</p>
            
            <a href="newThread.php"><button class="createBtn">Create New Thread</button></a>
        </div>
    </div>
    <form action="newDiscussion2.php?id=<?php echo($id)?> " class="container" method="post">
        <div class="titleDiv">
            <label for="containerHeader" class="containerHeader">Create a Discussion</label>
        </div>
        <?php
        ?>
        <label for="thread" class="p1">Thread: <?php echo $parentThreadHeader?></label>
        <p>
        <input type="text" class="titleTxtBox" id="title" name="title" placeholder="Discussion Title">
        <textarea class="contentTxtBox" id="content" name="content" placeholder="Discussion Content"></textarea></p>
        <button class="btn" type="submit" name="submit" style="margin-left: 40%">Post</button>
    </form>
    
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