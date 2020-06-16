<?php
include "./includes.inc.php";

$_POST = json_decode(file_get_contents('php://input'), true);

if (!empty($_POST)) {
    $type = $_POST['type'];
    $event = $event->addTypeEvent($type);
    if ($event->rowCount()) {
?>

        {
        "success": true,
        "message":"type formation added successfully!"
        }

    <?php
    } else {
    ?>

        {
        "success": false,
        "message":"type formation could not be added"
        }

<?php
    }
}
