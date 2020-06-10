<?php
include "./includes.inc.php";

$_POST = json_decode(file_get_contents('php://input'), true);

if (!empty($_POST)) {
    $first_name = $_POST['first_name'];
    $last_name = $_POST['last_name'];
    $date = $_POST['date'];
    $date = date("Y-m-d", strtotime($date));
    $email = $_POST['email'];
    $phone = $_POST['number'];
    $selectedFormation = (int) $_POST['formation'];
    $dial_code = $_POST['dial_code'];
    $country_code = $_POST['country_code'];

    $cond = $condidat->insertCondidat(
        $first_name,
        $last_name,
        $date,
        $email,
        $phone,
        $selectedFormation,
        $dial_code,
        $country_code
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
}
