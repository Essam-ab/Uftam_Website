<?php
include "./includes.inc.php";

$id = $_GET['id'];
$query = $formation->getFormation($id);
if ($query->rowCount()) {
    $formation = $query->fetchAll(PDO::FETCH_OBJ);
    $i = 0;
    foreach ($formation as $val) {
        $d[$i]['id'] = $val->for_id;
        $d[$i]['lib'] = $val->for_lib;
        $d[$i]['pres'] = $val->for_presentation;
        $d[$i]['desc'] = $val->for_description;
        $d[$i]['date'] = $val->for_modification_date;
        $d[$i]['type'] = $val->ttf_lib;
        $d[$i]['status'] = $val->for_active;
    }
    echo json_encode($d);
} else {
    echo http_response_code(401);
}
