<?php
include "./includes.inc.php";

$_POST = json_decode(file_get_contents('php://input'), true);

if (!empty($_POST)) {
    $lib = $_POST['lib'];
    $desc = $_POST['description'];
    $exp = $student->addStudentExp(
        $lib,
        $desc,
    );
    if ($exp->rowCount()) {
?>

        {
        "success": true,
        "message":"student exp added successfully!"
        }

    <?php
    } else {
    ?>

        {
        "success": false,
        "message":"student exp could not be added"
        }

<?php
    }
}
