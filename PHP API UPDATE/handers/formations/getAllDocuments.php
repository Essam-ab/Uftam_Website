<?php
include "./includes.inc.php";

$d = [];
$query = $formation->getAllDocuments();
if ($query->rowCount()) {
    $formations = $query->fetchAll(PDO::FETCH_OBJ);
    $i = 0;
    foreach ($formations as $val) {
        $d[$i]['id'] = $val->for_id;
        $d[$i]['lib'] = $val->for_lib;
        $d[$i]['path'] = $val->for_document;
        $i++;
    }
    echo json_encode($d);
} else {
    echo http_response_code(401);
}
