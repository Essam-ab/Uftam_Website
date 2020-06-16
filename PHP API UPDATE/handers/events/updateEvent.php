<?php
include "./includes.inc.php";

$_POST = json_decode(file_get_contents('php://input'), true);

if (!empty($_POST)) {
    $lib = $_POST['lib'];
    $id = (int) $_POST['id'];
    $date =  $_POST['date'];
    $date = date("Y-m-d", strtotime($date));
    $desc = $_POST['desc'];
    $type = (int) $_POST['type'];
    $query = $event->updateEvent(
        $id,
        $lib,
        $date,
        $desc,
        $type
    );
    if ($query->rowCount()) {
?>
        {
        "success": true,
        "message":"event has been updated successfully!"
        }

    <?php
    } else {
    ?>
        {
        "success": false,
        "message":"event has not been updated"
        }
<?php
    }
}
