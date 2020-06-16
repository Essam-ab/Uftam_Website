<?php
include "includes.inc.php";
$target_dir = "./uploads/";
$filename = $_FILES['myFile']['name'];
$target_file = $target_dir . $_FILES['myFile']['name'];
move_uploaded_file($_FILES['myFile']['tmp_name'], $target_file);
$path = $_FILES['myFile']['name'];

$query = $event->addEventImage($path);
if ($query->rowCount()) {
    $back = $event->lastAddedEvent();
    if ($back->rowCount()) {
        foreach ($back->fetchAll(PDO::FETCH_ASSOC) as $val) {
            $id = $val['eve_id'];
        }
    }
?>
    {
    "success": true,
    "message":"upload done!",
    "id": <?= $id ?>
    }
<?php
}
