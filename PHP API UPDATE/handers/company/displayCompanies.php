<?php
include "./includes.inc.php";

$d = [];
$query = $company->displayCompanies();
if ($query->rowCount()) {
    $events = $query->fetchAll(PDO::FETCH_OBJ);
    $i = 0;
    foreach ($events as $val) {
        $d[$i]['id'] = $val->ttc_id;
        $d[$i]['lib'] = $val->ttc_lib;
        $d[$i]['status'] = $val->ttc_active;
        $d[$i]['path'] = $val->ttc_logo;
        $i++;
    }
    echo json_encode($d);
} else {
    echo http_response_code(401);
}
