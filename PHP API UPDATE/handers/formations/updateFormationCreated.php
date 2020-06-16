<?php
include "includes.inc.php";

$_POST = json_decode(file_get_contents('php://input'), true);
if (!empty($_POST)) {
    $id = (int) $_POST['id'];
    $lib = $_POST['lib'];
    $pres = $_POST['pres'];
    $desc = $_POST['desc'];
    $type_id = $_POST['type'];
    $query = $formation->updateFormationCreated($lib, $pres, $desc, $type_id, $id);
    if ($query->rowCount()) {

?>
        {
        "success": true,
        "message":"update done!
        }
<?php
    }
}
