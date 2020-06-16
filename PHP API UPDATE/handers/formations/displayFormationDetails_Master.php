<?php
include "./includes.inc.php";

$d = [];
if (isset($_GET)) {
    $id = $_GET['id'];
    $query = $formation->displayFormationDetails_Master($id);
    if ($query->rowCount()) {
        $events = $query->fetchAll(PDO::FETCH_OBJ);
        $i = 0;
        foreach ($events as $val) {
            $d[$i]['id'] = $val->for_id;
            $d[$i]['type'] = $val->ttf_lib;
            $d[$i]['lib'] = $val->for_lib;
            $d[$i]['document'] = $val->for_document;
            $d[$i]['img'] = $val->for_img;
            $d[$i]['niveau'] = $val->for_niveau;
            $d[$i]['prerequis'] = $val->for_prerequis;
            $d[$i]['duration'] = $val->for_duration;
            $d[$i]['regime'] = $val->for_regime;
            $d[$i]['mod_admission'] = $val->for_mod_admission;
            $d[$i]['enjeux'] = $val->for_enjeux;
            $d[$i]['program'] = $val->for_program;
            $d[$i]['debouche'] = $val->for_debouche;
            $d[$i]['public_acceuil'] = $val->for_public_acceuil;
            $d[$i]['logo'] = $val->dip_logo;
            $d[$i]['type_logo'] = $val->type;

            $i++;
        }
        echo json_encode($d);
    } else {
        echo "no rowns in displayFormationDetails";
    }
} else {
    echo "cant get id!";
}
