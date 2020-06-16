<?php
include "includes.inc.php";
$_POST = json_decode(file_get_contents('php://input'), true);

if (!empty($_POST)) {
    $id = (int) $_POST['id'];
    $query = $event->deleteTypeEvent($id);
    if ($query->rowCount()) {
?>
        {
        "success": true,
        "message":"type event has been deleted successfully!"
        }

    <?php
    } else {
    ?>
        {
        "success": false,
        "message":"this type is used in a contraint"
        }
<?php
    }
}
