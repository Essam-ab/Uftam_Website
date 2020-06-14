<?php
include "./includes.inc.php";

$d = [];
$query = $vie->displayVie();
if ($query->rowCount()) {
    $vie = $query->fetchAll(PDO::FETCH_OBJ);
    $i = 0;
    foreach ($vie as $val) {
        $d[$i]['id'] = $val->tlv_id;
        $d[$i]['lib'] = $val->tlv_lib;
        $d[$i]['description'] = $val->tlv_description;
        $d[$i]['path'] = $val->tlv_img;
        $d[$i]['status'] = $val->tlv_active;
        $i++;
    }
    echo json_encode($d);
} else {
    echo http_response_code(401);
}
