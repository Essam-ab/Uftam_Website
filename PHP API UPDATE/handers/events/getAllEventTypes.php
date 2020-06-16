<?php
include "./includes.inc.php";

$d = [];
$query = $event->getAllEventTypes();
if ($query->rowCount()) {
    $events = $query->fetchAll(PDO::FETCH_OBJ);
    $i = 0;
    foreach ($events as $val) {
        $d[$i]['id'] = $val->tte_id;
        $d[$i]['lib'] = $val->tte_lib;
        $d[$i]['status'] = $val->tte_active;
        $i++;
    }
    echo json_encode($d);
} else {
    echo http_response_code(401);
}
