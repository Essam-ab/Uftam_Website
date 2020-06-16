<?php
include "./includes.inc.php";

$_POST = json_decode(file_get_contents('php://input'), true);
if (!empty($_POST)) {
    $email = $_POST['email'];
    $result = $shared->subscribeToNewsletter($email);

    if ($result->rowCount()) {
?>
        {
        "success": true,
        "message":"successfully subscribed!"
        }
    <?php
    } else {
    ?>
        {
        "success": false,
        "message":"there was problem while trying to subscribe to the newsletter, please check the subscribeToNewsletter for more details!"
        }
    <?php
    }
} else {
    ?>
    {
    "success": false,
    "message":"there's no data to submit!"
    }
<?php
}
