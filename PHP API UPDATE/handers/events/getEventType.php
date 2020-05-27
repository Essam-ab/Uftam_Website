<?php
include "./includes.inc.php";

$d = [];
$id = (int) $_GET['id'];
$query = $event->getTypeEvent($id);
if ($query->rowCount()) {
    $type = $query->fetchAll(PDO::FETCH_OBJ);
    $i = 0;
    foreach ($type as $val) {
        $d[$i]['id'] = $val->tte_id;
        $d[$i]['lib'] = $val->tte_lib;
    }
    echo json_encode($d);
} else {
    echo http_response_code(401);
}
