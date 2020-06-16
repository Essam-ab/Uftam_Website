<?php
include "./includes.inc.php";

$_POST = json_decode(file_get_contents('php://input'), true);

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
$id = $_GET['id'];
$cond = $condidat->addCondidat(
    $first_path,
    (int) $id
);

if ($cond->rowCount()) {
?>

    {
    "success": true,
    "message":"condidat added successfully!"
    }

<?php
} else {
?>

    {
    "success": false,
    "message":"condidat could not be added"
    }

<?php
}

/*
$first_name = $_POST['first_name'];
$last_name = $_POST['last_name'];
$date = $_POST['date'];
$date = date("Y-m-d", strtotime($date));
$email = $_POST['email'];
$phone = $_POST['number'];
$selectedFormation = $_POST['selectedFormation'];
$dial_code = $_POST['dial_code'];
$country_code = $_POST['country_code'];

$cond = $condidat->addCondidat(
    $first_name,
    $last_name,
    $date,
    $email,
    $phone,
    $selectedFormation,
    $dial_code,
    $country_code,
    $first_path
);
*/
