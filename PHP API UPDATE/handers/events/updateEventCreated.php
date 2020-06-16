<?php
include "includes.inc.php";

$_POST = json_decode(file_get_contents('php://input'), true);
if (!empty($_POST)) {
    $id = (int) $_POST['id'];
    $lib = $_POST['lib'];
    $date = date("Y-m-d", strtotime($_POST['date']));
    $desc = $_POST['desc'];
    $type_id = (int) $_POST['type'];
    $query = $event->updateEventCreated($lib, $desc, $date, $type_id, $id);
    if ($query->rowCount()) {

?>
        {
        "success": true,
        "message":"update done!
        }
<?php
    }
}
