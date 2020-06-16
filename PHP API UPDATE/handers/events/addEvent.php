<?php
include "./includes.inc.php";

$_POST = json_decode(file_get_contents('php://input'), true);

if (!empty($_POST)) {
    $lib = $_POST['lib'];
    $date = $_POST['date'];
    $date = date("Y-m-d", strtotime($date));
    $desc = $_POST['desc'];
    $type_id = $_POST['type'];
    $event = $event->addEvent(
        $lib,
        $desc,
        $date,
        (int) $type_id
    );
    if ($event->rowCount()) {
?>

        {
        "success": true,
        "message":"event added successfully!"
        }

    <?php
    } else {
    ?>

        {
        "success": false,
        "message":"event could not be added"
        }

<?php
    }
}
