<?php
include "./includes.inc.php";

$d = [];
$query = $partner->getAllPartners();
if ($query->rowCount()) {
    $partners = $query->fetchAll(PDO::FETCH_OBJ);
    $i = 0;
    foreach ($partners as $val) {
        $d[$i]['id'] = $val->par_id;
        $d[$i]['lib'] = $val->par_lib;
        $d[$i]['path'] = $val->par_logo;
        $d[$i]['status'] = $val->par_active;
        $i++;
    }
    echo json_encode($d);
} else {
    echo http_response_code(401);
}
