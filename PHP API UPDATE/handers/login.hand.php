<?php
include "./includes.inc.php";

$_POST = json_decode(file_get_contents('php://input'), true);

if (!empty($_POST)) {
    $pwd = $_POST['password'];
    $username = $_POST['username'];
    $result = $shared->loginDashboard($username, $pwd);
    if ($result->rowCount()) {
?>
        {
        "success": true,
        "message": "login authorized"
        }
    <?php
    } else {
    ?>
        {
        "success": false,
        "message": "invalid login or password!"
        }
    <?php
    }
} else {
    ?>
    {
    "success": false,
    "message": "post array is empty!"
    }
<?php
}
