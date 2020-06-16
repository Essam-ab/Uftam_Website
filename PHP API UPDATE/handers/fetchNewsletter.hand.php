<?php
include "./includes.inc.php";

$d = [];
$query = $shared->fetchSubscribers();
if ($query->rowCount()) {
    $events = $query->fetchAll(PDO::FETCH_OBJ);
    $i = 0;
    foreach ($events as $val) {
        $d[$i]['id'] = $val->new_id;
        $d[$i]['email'] = $val->new_email;
        $d[$i]['date'] = $val->new_submit_date;
        $i++;
    }
    echo json_encode($d);
} else {
    echo 0;
}
