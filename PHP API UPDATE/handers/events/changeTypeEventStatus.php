<?php
include "includes.inc.php";
$_POST = json_decode(file_get_contents('php://input'), true);

if (!empty($_POST)) {
    $id = (int) $_POST['id'];
    $status =  $_POST['status'];
    $query = $event->updateTypeStatus(
        $id,
        $status,
    );
    if ($query->rowCount()) {
?>
        {
        "success": true,
        "message":"type event has been updated successfully!"
        }

    <?php
    } else {
    ?>
        {
        "success": false,
        "message":"type event has not been updated"
        }
<?php
    }
}
