<?php
include "includes.inc.php";
$target_dir = "./documents/";
$filename = $_FILES['myFile']['name'];
$target_file = $target_dir . $_FILES['myFile']['name'];
move_uploaded_file($_FILES['myFile']['tmp_name'], $target_file);
$path = $_FILES['myFile']['name'];

$_POST = json_decode(file_get_contents('php://input'), true);
if (isset($_GET)) {
    $id = (int) $_GET['id'];
    $query = $formation->setFormationDocument($path, $id);
    if ($query->rowCount()) {
?>
        {
        "success": true,
        "message":"upload done!",
        "id": <?= $id ?>
        }
    <?php
    }
} else {
    ?>
    {
    "success": false,
    "message":"couldn't get id from url!",
    "id": <?= $id ?>
    }
<?php
}
