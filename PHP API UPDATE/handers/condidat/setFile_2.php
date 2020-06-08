<?php
include "./includes.inc.php";

$target_dir = "./uploads/";

function File_2($target_directory)
{
    $filename = $_FILES['File_2']['name'];
    $target_file = $target_directory . $_FILES['File_2']['name'];
    move_uploaded_file($_FILES['File_2']['tmp_name'], $target_file);
    $path = $_FILES['File_2']['name'];
    return $path;
}
$second_path = File_2($target_dir);


$cond = $condidat->uploadStep_2(
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
