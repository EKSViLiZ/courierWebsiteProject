<?php
    /*Checks if User is already Logged In*/
    session_start();
    
    if (!isset($_SESSION["user"])) {
        header("Location: ../usertype/guest/home.php");
    }
    
    require_once "../index/index.php";
    
    if (isset($_POST["submit"])) {
        $title = $_POST["title"];
        $content = $_POST["content"];
        $byUser = $_SESSION['id'];
        $threadType = $_POST["thread_type_id"];
        $dateCreated = date('Y-m-d H:i:s');
        
        $sql = "INSERT INTO `thread` (header, body, byUser_id, thread_type_id, date_created) VALUES (? ,? ,? ,? ,?)";
        $stmt = mysqli_stmt_init($conn);
        $prepareStmt = mysqli_stmt_prepare($stmt, $sql);
        if ($prepareStmt) {
            mysqli_stmt_bind_param($stmt, "ssiis", $title, $content, $byUser, $threadType, $dateCreated);
            mysqli_stmt_execute($stmt);
            echo ("<div class='alert alertSuccess alertPrimaryCenter'>Thread Created!</div>");
        } else {
            die("<div class='alert alertError alertPrimaryCenter'>Something went wrong!</div>");
        }
    }
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Start a New Discussion!</title>
    
    <link rel="stylesheet" href="newThread.css">
    
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
    <form action="newThread.php" class="container" method="post">
        <p>
        <input type="text" class="titleTxtBox" id="title" name="title" placeholder="Thread Title">
        <div class="threadTypeSelect">
            <select name="thread_type_id" id="thread_type_id" class="">
                <option value="" class="">Select Thread Type</option>
                <?php
                    $query = 'SELECT * FROM `thread_type` ORDER BY name';
                    $result = mysqli_query($conn, $query);
                    
                    while($row = mysqli_fetch_assoc($result)){
                ?>
                <option value="<?php echo $row['id']?>" class=""><?php echo $row['name']?></option>
                <?php
                    }
                ?>
            </select>
        </div>
        <textarea class="contentTxtBox" id="content" name="content" placeholder="Thread Discription"></textarea></p>
        <button class="post" type="submit" name="submit">Post</button>
    </form>
    
    <div class="footer">
    </div>
</body>
</html>