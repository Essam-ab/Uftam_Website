<?php
include "./includes.inc.php";

$target_dir = "./uploads/";

function File_6($target_directory)
{
    $filename = $_FILES['File_6']['name'];
    $target_file = $target_directory . $_FILES['File_5']['name'];
    move_uploaded_file($_FILES['File_6']['tmp_name'], $target_file);
    $path = $_FILES['File_6']['name'];
    return $path;
}
$sixth_path = File_6($target_dir);


$cond = $condidat->uploadStep_6(
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
