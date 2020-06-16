<?php
include "./includes.inc.php";

$id = $_GET['id'];
$query = $event->getEvent($id);
if ($query->rowCount()) {
    $event = $query->fetchAll(PDO::FETCH_OBJ);
    $i = 0;
    foreach ($event as $val) {
        $d[$i]['id'] = $val->eve_id;
        $d[$i]['lib'] = $val->eve_lib;
        $d[$i]['desc'] = $val->eve_description;
        $d[$i]['date'] = $val->eve_date;
        $d[$i]['type'] = $val->tte_lib;
    }
    echo json_encode($d);
} else {
    echo http_response_code(401);
}
