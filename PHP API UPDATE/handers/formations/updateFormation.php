<?php
include "./includes.inc.php";

$_POST = json_decode(file_get_contents('php://input'), true);

if (!empty($_POST)) {
    $lib = $_POST['lib'];
    $id = (int) $_POST['id'];
    $pres =  $_POST['pres'];
    $desc = $_POST['desc'];
    $type = (int) $_POST['type'];
    $query = $formation->updateFormation(
        $id,
        $lib,
        $pres,
        $desc,
        $type
    );
    if ($query->rowCount()) {
?>
        {
        "success": true,
        "message":"formation has been updated successfully!"
        }

    <?php
    } else {
    ?>
        {
        "success": false,
        "message":"formation has not been updated"
        }
<?php
    }
}
