<?php
include "./includes.inc.php";

$target_dir = "./uploads/";

function File_3($target_directory)
{
    $filename = $_FILES['File_3']['name'];
    $target_file = $target_directory . $_FILES['File_3']['name'];
    move_uploaded_file($_FILES['File_3']['tmp_name'], $target_file);
    $path = $_FILES['File_3']['name'];
    return $path;
}
$third_path = File_3($target_dir);


$cond = $condidat->uploadStep_3(
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
