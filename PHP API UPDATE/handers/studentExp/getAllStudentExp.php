<?php
include "./includes.inc.php";

$d = [];
$query = $student->getAllStudentExp();
if ($query->rowCount()) {
    $exp = $query->fetchAll(PDO::FETCH_OBJ);
    $i = 0;
    foreach ($exp as $val) {
        $d[$i]['id'] = $val->tse_id;
        $d[$i]['lib'] = $val->tse_lib;
        $d[$i]['desc'] = $val->tse_description;
        $d[$i]['status'] = $val->tse_active;
        $i++;
    }
    echo json_encode($d);
} else {
    echo http_response_code(401);
}
