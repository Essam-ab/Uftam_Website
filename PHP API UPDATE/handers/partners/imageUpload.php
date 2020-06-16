<?php
include "includes.inc.php";
$target_dir = "../../upload/";
$filename = $_FILES['myFile']['name'];
$target_file = $target_dir . $_FILES['myFile']['name'];
move_uploaded_file($_FILES['myFile']['tmp_name'], $target_file);
$path = $_FILES['myFile']['name'];

$query = $partner->addPartnerLogo($path);
if ($query->rowCount()) {
    $back = $partner->lastAddedPartner();
    if ($back->rowCount()) {
        foreach ($back->fetchAll(PDO::FETCH_ASSOC) as $val) {
            $id = $val['par_id'];
        }
    }
?>
    {
    "success": true,
    "message":"upload done!",
    "id": <?= $id ?>
    }
<?php
}
