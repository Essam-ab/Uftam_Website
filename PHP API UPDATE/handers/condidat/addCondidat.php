<?php
include "./includes.inc.php";

$_POST = json_decode(file_get_contents('php://input'), true);

// if (!empty($_POST)) {
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

function File_2($target_directory)
{
    $filename = $_FILES['File_2']['name'];
    $target_file = $target_directory . $_FILES['File_2']['name'];
    move_uploaded_file($_FILES['File_2']['tmp_name'], $target_file);
    $path = $_FILES['File_2']['name'];
    return $path;
}
$second_path = File_2($target_dir);

function File_3($target_directory)
{
    $filename = $_FILES['File_3']['name'];
    $target_file = $target_directory . $_FILES['File_3']['name'];
    move_uploaded_file($_FILES['File_3']['tmp_name'], $target_file);
    $path = $_FILES['File_3']['name'];
    return $path;
}
$third_path = File_3($target_dir);

function File_4($target_directory)
{
    $filename = $_FILES['File_4']['name'];
    $target_file = $target_directory . $_FILES['File_4']['name'];
    move_uploaded_file($_FILES['File_4']['tmp_name'], $target_file);
    $path = $_FILES['File_4']['name'];
    return $path;
}
$fourth_path = File_4($target_dir);

function File_5($target_directory)
{
    $filename = $_FILES['File_5']['name'];
    $target_file = $target_directory . $_FILES['File_5']['name'];
    move_uploaded_file($_FILES['File_5']['tmp_name'], $target_file);
    $path = $_FILES['File_5']['name'];
    return $path;
}
$fifth_path = File_5($target_dir);

function File_6($target_directory)
{
    $filename = $_FILES['File_6']['name'];
    $target_file = $target_directory . $_FILES['File_5']['name'];
    move_uploaded_file($_FILES['File_6']['tmp_name'], $target_file);
    $path = $_FILES['File_6']['name'];
    return $path;
}
$sixth_path = File_6($target_dir);

function File_7($target_directory)
{
    $filename = $_FILES['File_7']['name'];
    $target_file = $target_directory . $_FILES['File_7']['name'];
    move_uploaded_file($_FILES['File_7']['tmp_name'], $target_file);
    $path = $_FILES['File_7']['name'];
    return $path;
}
$seventh_path = File_7($target_dir);

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
    $first_path,
    $second_path,
    $third_path,
    $fourth_path,
    $fifth_path,
    $sixth_path,
    $seventh_path
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
// } else {
//     echo "Posted data is not found!";
// }


/*
    $filename = $_FILES['myFile']['name'][0];
    $target_file = $target_dir . $_FILES['myFile']['name'][0];
    move_uploaded_file($_FILES['myFile']['tmp_name'][0], $target_file);
    $first_path = $_FILES['myFile']['name'][0];

    //2
    $filename = $_FILES['myFile']['name'][1];
    $target_file = $target_dir . $_FILES['myFile']['name'][1];
    move_uploaded_file($_FILES['myFile']['tmp_name'][1], $target_file);
    $second_path = $_FILES['myFile']['name'][1];

    //3
    $filename = $_FILES['myFile']['name'][2];
    $target_file = $target_dir . $_FILES['myFile']['name'][2];
    move_uploaded_file($_FILES['myFile']['tmp_name'][2], $target_file);
    $third_path = $_FILES['myFile']['name'][2];

    //4
    $filename = $_FILES['myFile']['name'][3];
    $target_file = $target_dir . $_FILES['myFile']['name'][3];
    move_uploaded_file($_FILES['myFile']['tmp_name'][3], $target_file);
    $fourth_path = $_FILES['myFile']['name'][3];

    //5
    $filename = $_FILES['myFile']['name'][4];
    $target_file = $target_dir . $_FILES['myFile']['name'][4];
    move_uploaded_file($_FILES['myFile']['tmp_name'][4], $target_file);
    $fifth_path = $_FILES['myFile']['name'][4];

    //6
    $filename = $_FILES['myFile']['name'][5];
    $target_file = $target_dir . $_FILES['myFile']['name'][5];
    move_uploaded_file($_FILES['myFile']['tmp_name'][5], $target_file);
    $fourth_path = $_FILES['myFile']['name'][5];

 */