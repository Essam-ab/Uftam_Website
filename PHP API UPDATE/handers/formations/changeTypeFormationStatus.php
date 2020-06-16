<?php
include "includes.inc.php";
$_POST = json_decode(file_get_contents('php://input'), true);

if (!empty($_POST)) {
    $id = (int) $_POST['id'];
    $status =  $_POST['status'];
    $query = $formation->updateTypeStatus(
        $id,
        $status,
    );
    if ($query->rowCount()) {
?>
        {
        "success": true,
        "message":"type formation has been updated successfully!"
        }

    <?php
    } else {
    ?>
        {
        "success": false,
        "message":"type formation has not been updated"
        }
<?php
    }
}
