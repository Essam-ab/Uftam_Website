<?php
include "./includes.inc.php";

$d = [];

if (isset($_GET)) {
    $id = $_GET['id'];
    $query = $event->getArticleDetails($id);
    if ($query->rowCount()) {
        $events = $query->fetchAll(PDO::FETCH_OBJ);
        $i = 0;
        foreach ($events as $val) {
            $d[$i]['eve_details'] = $val->eve_details;
            $i++;
        }
        echo json_encode($d);
    } else {
        echo http_response_code(401);
    }
} else
    echo "get array undefined!";
