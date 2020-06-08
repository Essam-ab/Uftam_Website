<?php
include "./includes.inc.php";

$target_dir = "./uploads/";


function File_4($target_directory)
{
    $filename = $_FILES['File_4']['name'];
    $target_file = $target_directory . $_FILES['File_4']['name'];
    move_uploaded_file($_FILES['File_4']['tmp_name'], $target_file);
    $path = $_FILES['File_4']['name'];
    return $path;
}
$fourth_path = File_4($target_dir);


$cond = $condidat->uploadStep_4(
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
