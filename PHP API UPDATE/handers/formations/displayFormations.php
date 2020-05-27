<?php
include "./includes.inc.php";

$d = [];
$query = $formation->displayFormations();
if ($query->rowCount()) {
    $events = $query->fetchAll(PDO::FETCH_OBJ);
    $i = 0;
    foreach ($events as $val) {
        $d[$i]['id'] = $val->for_id;
        $d[$i]['lib'] = $val->for_lib;
        $d[$i]['pres'] = $val->for_presentation;
        $d[$i]['desc'] = $val->for_description;
        $d[$i]['type'] = $val->ttf_lib;
        $d[$i]['status'] = $val->for_active;
        $d[$i]['path'] = $val->for_img;
        $i++;
    }
    echo json_encode($d);
} else {
    echo http_response_code(401);
}
