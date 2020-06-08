<?php
include "./includes.inc.php";

$target_dir = "./uploads/";

function File_1($target_directory)
{
    $filename = $_FILES['File_1']['name'];
    $target_file = $target_directory . $_FILES['File_1']['name'];
    move_uploaded_file($_FILES['File_1']['tmp_name'], $target_file);
    $path = $_FILES['File_1']['name'];
    return $path;
}
$first_path = File_1($target_dir);

$cond = $condidat->uploadStep_1(
    $id,
    $first_path
);
if ($cond->rowCount()) {
?>

    {
    "success": true,
    "message":"condidat updated successfully!"
    }

<?php
} else {
?>

    {
    "success": false,
    "message":"condidat could not be updated"
    }

<?php
}
