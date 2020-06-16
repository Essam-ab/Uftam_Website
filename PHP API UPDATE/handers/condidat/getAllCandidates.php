<?php
include "./includes.inc.php";

$d = [];
$query = $condidat->getAllCandidat();
if ($query->rowCount()) {
    $events = $query->fetchAll(PDO::FETCH_OBJ);
    $i = 0;
    foreach ($events as $val) {
        $d[$i]['con_id'] = $val->con_id;
        $d[$i]['con_f_name'] = $val->con_f_name;
        $d[$i]['con_l_name'] = $val->con_l_name;
        $d[$i]['con_date'] = $val->con_date;
        $d[$i]['con_email'] = $val->con_email;
        $d[$i]['for_lib'] = $val->for_lib;
        $d[$i]['for_type'] = $val->ttf_lib;
        $d[$i]['con_number'] = $val->con_number;
        $d[$i]['con_dial_code'] = $val->con_dial_code;
        $d[$i]['con_country'] = $val->con_country;
        $d[$i]['con_form_condidat'] = $val->con_form_condidat;
        $d[$i]['con_identity'] = $val->con_identity;
        $d[$i]['con_releve_note'] = $val->con_releve_note;
        $d[$i]['con_cv'] = $val->con_cv;
        $d[$i]['con_motivation_letter'] = $val->con_motivation_letter;
        $d[$i]['con_recommendation_letter'] = $val->con_recommendation_letter;
        $d[$i]['con_document'] = $val->con_document;
        $i++;
    }
    echo json_encode($d);
} else {
    echo http_response_code(401);
}
