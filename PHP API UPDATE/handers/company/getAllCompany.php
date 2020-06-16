<?php
include "./includes.inc.php";

$d = [];
$query = $company->getAllCompanies();
if ($query->rowCount()) {
    $partners = $query->fetchAll(PDO::FETCH_OBJ);
    $i = 0;
    foreach ($partners as $val) {
        $d[$i]['id'] = $val->ttc_id;
        $d[$i]['lib'] = $val->ttc_lib;
        $d[$i]['path'] = $val->ttc_logo;
        $d[$i]['status'] = $val->ttc_active;
        $i++;
    }
    echo json_encode($d);
} else {
    echo http_response_code(401);
}
