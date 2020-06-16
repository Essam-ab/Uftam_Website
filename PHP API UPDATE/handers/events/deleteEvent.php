<?php
include "includes.inc.php";
$_POST = json_decode(file_get_contents('php://input'), true);

if (!empty($_POST)) {
    $id = (int) $_POST['id'];
    $query = $event->deleteEvent($id);
    if ($query->rowCount()) {
?>
        {
        "success": true,
        "message":"event has been deleted successfully!"
        }

    <?php
    } else {
    ?>
        {
        "success": false,
        "message":"event has not been deleted"
        }
<?php
    }
}
