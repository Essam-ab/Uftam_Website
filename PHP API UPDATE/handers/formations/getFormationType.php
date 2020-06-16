<?php
include "./includes.inc.php";

$d = [];
$id = (int) $_GET['id'];
$query = $formation->getTypeFormation($id);
if ($query->rowCount()) {
    $type = $query->fetchAll(PDO::FETCH_OBJ);
    $i = 0;
    foreach ($type as $val) {
        $d[$i]['id'] = $val->ttf_id;
        $d[$i]['lib'] = $val->ttf_lib;
        $d[$i]['status'] = $val->ttf_active;
    }
    echo json_encode($d);
} else {
    echo http_response_code(401);
}
