<?php
include "./includes.inc.php";

$_POST = json_decode(file_get_contents('php://input'), true);

if (!empty($_POST)) {
    $lib = $_POST['lib'];
    $pres = $_POST['pres'];
    $desc = $_POST['desc'];
    $type_id = $_POST['type'];
    $formation = $formation->addFormation(
        $lib,
        $pres,
        $desc,
        (int) $type_id
    );
    if ($formation->rowCount()) {
?>

        {
        "success": true,
        "message":"formation added successfully!"
        }

    <?php
    } else {
    ?>

        {
        "success": false,
        "message":"formation could not be added"
        }

<?php
    }
}
