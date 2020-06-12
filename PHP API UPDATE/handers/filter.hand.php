<?php
include "./includes.inc.php";

$_POST = json_decode(file_get_contents('php://input'), true);
if (!empty($_POST)) {
    $data = $_POST['data'];
    $hint = $_POST['hint'];
    $data = $shared->filterData($data, $hint);
    echo json_encode($data);
}
