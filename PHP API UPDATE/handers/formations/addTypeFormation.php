<?php
include "./includes.inc.php";

$_POST = json_decode(file_get_contents('php://input'), true);

if (!empty($_POST)) {
    $type = $_POST['type'];
    $formation = $formation->addTypeFormation($type);
    if ($formation->rowCount()) {
        // demand added successfully!;
?>

        {
        "success": true,
        "message":"type formation added successfully!"
        }

    <?php
    } else {
        // "demand could not be added, error in addTypeFormation();
    ?>

        {
        "success": false,
        "message":"type formation could not be added"
        }

<?php
    }
}
