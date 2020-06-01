<?php
include "./includes.inc.php";

$d = [];

if (isset($_GET)) {
    $id = $_GET['id'];
    $query = $event->getArticle($id);
    if ($query->rowCount()) {
        $events = $query->fetchAll(PDO::FETCH_OBJ);
        $i = 0;
        foreach ($events as $val) {
            $d[$i]['id'] = $val->eve_id;
            $d[$i]['lib'] = $val->eve_lib;
            $d[$i]['desc'] = $val->eve_description;
            $d[$i]['date'] = $val->eve_date;
            $d[$i]['monthName'] = date("F", strtotime($val->eve_date));
            $d[$i]['day'] = date("j", strtotime($val->eve_date));
            $d[$i]['type'] = $val->tte_lib;
            $d[$i]['status'] = $val->eve_active;
            $d[$i]['path'] = $val->eve_img;
            $i++;
        }
        echo json_encode($d);
    } else {
        echo http_response_code(401);
    }
} else
    echo "get array undefined!";
