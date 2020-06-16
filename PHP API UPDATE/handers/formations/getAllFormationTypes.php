<?php
include "./includes.inc.php";

$d = [];
$query = $formation->getAllFormationTypes();
if ($query->rowCount()) {
    $formations = $query->fetchAll(PDO::FETCH_OBJ);
    $i = 0;
    foreach ($formations as $val) {
        $d[$i]['id'] = $val->ttf_id;
        $d[$i]['lib'] = $val->ttf_lib;
        $d[$i]['status'] = $val->ttf_active;
        $i++;
    }
    echo json_encode($d);
} else {
    echo http_response_code(401);
}
