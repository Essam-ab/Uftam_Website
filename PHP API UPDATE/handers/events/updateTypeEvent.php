<?php
include "./includes.inc.php";

$_POST = json_decode(file_get_contents('php://input'), true);

if (!empty($_POST)) {
    $lib = $_POST['lib'];
    $id = $_POST['id'];
    $query = $event->updateType($lib, (int) $id);
    if ($query->rowCount()) {
?>
        {
        "success": true,
        "message":"type has been updated successfully!"
        }
    <?php
    } else {
    ?>
        {
        "success": false,
        "message":"type has not been updated"
        }
<?php
    }
}
