<?php
include "./includes.inc.php";

$d = [];
$query = $partner->displaySubPartners();
if ($query->rowCount()) {
    $events = $query->fetchAll(PDO::FETCH_OBJ);
    $i = 0;
    foreach ($events as $val) {
        $d[$i]['id'] = $val->par_id;
        $d[$i]['lib'] = $val->par_lib;
        $d[$i]['status'] = $val->par_active;
        $d[$i]['path'] = $val->par_logo;
        $i++;
    }
    echo json_encode($d);
} else {
    echo http_response_code(401);
}
