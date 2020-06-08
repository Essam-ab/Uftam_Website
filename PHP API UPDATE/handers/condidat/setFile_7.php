<?php
include "./includes.inc.php";

$target_dir = "./uploads/";


function File_7($target_directory)
{
    $filename = $_FILES['File_7']['name'];
    $target_file = $target_directory . $_FILES['File_7']['name'];
    move_uploaded_file($_FILES['File_7']['tmp_name'], $target_file);
    $path = $_FILES['File_7']['name'];
    return $path;
}
$seventh_path = File_7($target_dir);


$cond = $condidat->uploadStep_7(
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
